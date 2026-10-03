importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js");
firebase.initializeApp({
    apiKey: "AIzaSyBboJxmtFdyQjIrpDqjCeyybFSEhW5jhOQ",
    authDomain: "odhia-dev.firebaseapp.com",
    projectId: "odhia-dev",
    storageBucket: "odhia-dev.firebasestorage.app",
    messagingSenderId: "314873010712",
    appId: "1:314873010712:web:02813cde2997c4a02c016d"
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