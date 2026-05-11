.class public Lplugin/notifications/v2/CoronaFirebaseInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "CoronaFirebaseInstanceIdService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 41
    :cond_0
    new-instance v1, Lcom/ansca/corona/events/NotificationRegistrationTask;

    invoke-direct {v1, v0}, Lcom/ansca/corona/events/NotificationRegistrationTask;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaRuntime;

    .line 43
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method
