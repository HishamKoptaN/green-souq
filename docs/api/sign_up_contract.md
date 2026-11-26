# Sign-up API contract

Endpoint: `POST /sign-up`  
Header: `Content-Type: application/json`  
Source of truth: `lib/features/auth/sign_up/data/models/sign_up_req_model.dart`

## Common fields

| Field | Type | Required | Notes |
|---|---|---|---|
| `name` | string | yes | Store name for shop accounts. |
| `phone` | string | yes | Full phone number. |
| `id_token` | string | yes | Firebase ID token, refreshed before the call. |
| `user_type` | string | yes | One of the values below. |
| `address` | string | no | Defaults to an empty string. |
| `latitude` | number | no | Parsed from the location field. |
| `longitude` | number | no | Parsed from the location field. |

## `user_type` values

- `shop` — agricultural inputs / pharmacy store.
- `agriculturalToolsMerchant` — agricultural tools merchant; uses the same shop payload.
- `salesEngineer` — sales engineer.
- `farmer` — farmer.

## Shop-specific fields

Sent only when the request contains shop registration details. All are optional at the
model level, but the UI requires the first three before enabling submit.

| Field | Type | Required by UI | Notes |
|---|---|---|---|
| `shop_name` | string | yes | Mirrors `name` for shop accounts. |
| `commercial_registration` | string | yes | Commercial registration number. |
| `specialization` | string | yes | e.g. أدوات ومستلزمات زراعية. |
| `shop_activities` | string[] | no | Selected activity chips; omitted when empty. |

Example payload for a tools merchant:

```json
{
  "name": "الواحة الخضراء",
  "phone": "+966500000000",
  "id_token": "<firebase-id-token>",
  "user_type": "agriculturalToolsMerchant",
  "address": "",
  "shop_name": "الواحة الخضراء",
  "commercial_registration": "12345",
  "specialization": "أدوات زراعية",
  "shop_activities": ["بذور وتقاوي معتمدة", "شبكات ومستلزمات ري"]
}
```

## Notes

- Field naming follows the existing snake_case convention.
- The mapper lives at `lib/features/auth/sign_up/data/mappers/sign_up_mapper.dart`.
- Backend must accept `agriculturalToolsMerchant`; otherwise map it to `shop` in the mapper.
- Unknown `user_type` values from the API fall back to `farmer` in `profile_model_mapper.dart`.
