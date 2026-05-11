.class public Lplugin/notifications/v2/CoronaFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "CoronaFirebaseMessagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 28
    invoke-virtual {p0}, Lplugin/notifications/v2/CoronaFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lplugin/notifications/v2/NotificationsV2Helper;->processRemoteMessage(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)V

    return-void
.end method
