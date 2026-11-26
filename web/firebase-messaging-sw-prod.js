importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js");
firebase.initializeApp({
    apiKey: 'AIzaSyD2At41nW1e2U8kCAIszQcIADeO3zfCDXM',
    authDomain: 'green-soouq.firebaseapp.com',
    projectId: 'green-soouq',
    storageBucket: 'green-soouq.firebasestorage.app',
    messagingSenderId: '414244773229',
    appId: '1:414244773229:web:1f4523e8f7210348a50e64',
});

const messaging = firebase.messaging();
messaging.onBackgroundMessage(function (payload) {
    self.registration.showNotification(
        payload.notification?.title,
        {
            body: payload.notification?.body,
            data: {
                url: payload.data?.url || '/dashboard'
            }
        }
    );
});
self.addEventListener('notificationclick', function (event) {
    event.notification.close();
    event.waitUntil(
        clients.openWindow(event.notification.data?.url ?? "/dashboard")
    );
});