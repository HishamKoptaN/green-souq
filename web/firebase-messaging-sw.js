importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js");
firebase.initializeApp({
    apiKey: "AIzaSyAYx-1BahE-eQ9pGb8nFSY23wQJvircZCs",
    authDomain: "greensoouq-dev.firebaseapp.com",
    projectId: "greensoouq-dev",
    storageBucket: "greensoouq-dev.firebasestorage.app",
    messagingSenderId: "732725114509",
    appId: "1:732725114509:web:d429a8f7cf2a9b91ca54c4"
});

const messaging = firebase.messaging();
messaging.onBackgroundMessage(function (payload) {
    self.registration.showNotification(
        payload.notification?.title,
        {
            body: payload.notification?.body,
            data: {
                url: payload.data?.url
            }
        }
    );
});
self.addEventListener('notificationclick', function (event) {
    event.notification.close();
    event.waitUntil(
        clients.openWindow(event.notification.data?.url)
    );
}); 