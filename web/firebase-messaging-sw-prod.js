importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js");
firebase.initializeApp({
    apiKey: 'AIzaSyCmJJAaYFuJtWCm7LBCR5PeBOGLtFxVW4Y',
    authDomain: 'odhia-acf3b.firebaseapp.com',
    projectId: 'odhia-acf3b',
    storageBucket: 'odhia-acf3b.firebasestorage.app',
    messagingSenderId: '534866637562',
    appId: '1:534866637562:web:b9fad965efe18bccb4cf43',
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