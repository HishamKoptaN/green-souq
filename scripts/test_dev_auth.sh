#!/usr/bin/env bash
# Headless smoke test for dev sign-in methods. Usage: FIREBASE_API_KEY=... ./scripts/test_dev_auth.sh
set -euo pipefail

API_KEY="${FIREBASE_API_KEY:?set FIREBASE_API_KEY from dev Firebase options}"
API_URL="${DEV_API_URL:-https://lawngreen-tapir-650317.hostingersite.com}"
PROJECT="${FIREBASE_PROJECT:-greensoouq-dev}"
TS="$(date +%s)"
EMAIL="opencode-smoke-$TS@example.com"
PASS='SmokePassw0rd!'
CREATED_UID=''

cleanup() {
  if [[ -n "$CREATED_UID" ]]; then
    TOKEN="$(gcloud auth print-access-token 2>/dev/null || true)"
    if [[ -n "$TOKEN" ]]; then
      curl -s -o /dev/null -X DELETE \
        -H "Authorization: Bearer $TOKEN" \
        -H "x-goog-user-project: $PROJECT" \
        "https://identitytoolkit.googleapis.com/admin/v2/projects/$PROJECT/accounts/$CREATED_UID" || true
    fi
  fi
}
trap cleanup EXIT

sign_up_response="$(curl -s -X POST -H 'Content-Type: application/json' \
  "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$API_KEY" \
  -d "{\"email\":\"$EMAIL\",\"password\":\"$PASS\",\"returnSecureToken\":true}")"
ID_TOKEN="$(python3 -c 'import json,sys; print(json.loads(sys.argv[1]).get("idToken",""))' "$sign_up_response")"
CREATED_UID="$(python3 -c 'import json,sys; print(json.loads(sys.argv[1]).get("localId",""))' "$sign_up_response")"
[[ -n "$ID_TOKEN" ]] || { echo 'email sign-up: FAIL'; exit 1; }
echo 'email/password (Firebase sign-up): OK'

backend="$(curl -s -X POST -H 'Content-Type: application/json' \
  "$API_URL/api/auth/sign-up" \
  -d "{\"id_token\":\"$ID_TOKEN\",\"name\":\"smoke\",\"user_type\":\"farmer\",\"phone\":\"01000000000\"}")"
echo "$backend" | grep -q 'firebase_uid' && echo 'email/password (backend sign-up): OK' || { echo "backend sign-up: FAIL $backend"; exit 1; }

sign_in="$(curl -s -X POST -H 'Content-Type: application/json' \
  "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$API_KEY" \
  -d "{\"email\":\"$EMAIL\",\"password\":\"$PASS\",\"returnSecureToken\":true}")"
echo "$sign_in" | grep -q 'idToken' && echo 'email/password (sign-in): OK' || { echo 'sign-in: FAIL'; exit 1; }

guest="$(curl -s -X POST -H 'Content-Type: application/json' \
  "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$API_KEY" \
  -d '{"returnSecureToken":true}')"
echo "$guest" | grep -q 'idToken' && echo 'anonymous (guest): OK' || { echo 'anonymous: FAIL'; exit 1; }
GUEST_UID="$(python3 -c 'import json,sys; print(json.loads(sys.argv[1]).get("localId",""))' "$guest")"
TOKEN="$(gcloud auth print-access-token 2>/dev/null || true)"
if [[ -n "$TOKEN" && -n "$GUEST_UID" ]]; then
  curl -s -o /dev/null -X DELETE -H "Authorization: Bearer $TOKEN" \
    -H "x-goog-user-project: $PROJECT" \
    "https://identitytoolkit.googleapis.com/admin/v2/projects/$PROJECT/accounts/$GUEST_UID" || true
fi

GOOGLE="$(curl -s -H "Authorization: Bearer $TOKEN" -H "x-goog-user-project: $PROJECT" \
  "https://identitytoolkit.googleapis.com/admin/v2/projects/$PROJECT/defaultSupportedIdpConfigs/google.com")"
echo "$GOOGLE" | grep -q '"enabled": true' && echo 'google provider config: OK' || { echo 'google provider: FAIL'; exit 1; }
echo 'ALL DEV AUTH SMOKE CHECKS PASSED'
