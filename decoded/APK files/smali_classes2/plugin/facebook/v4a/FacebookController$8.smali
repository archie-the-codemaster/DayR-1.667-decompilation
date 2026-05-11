.class final Lplugin/facebook/v4a/FacebookController$8;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController;->facebookInit(Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$8;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Corona"

    const-string v1, "++++++++++: Initialize Facebook on UI thread"

    .line 867
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Initialize Facebook"

    .line 868
    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->logThreadSignature(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$8;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$600()Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 874
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$8;->val$activity:Lcom/ansca/corona/CoronaActivity;

    .line 875
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$600()Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;

    move-result-object v1

    const v2, 0xface

    .line 874
    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;I)I

    move-result v0

    .line 876
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookController$8;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;I)V

    .line 882
    :cond_0
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$702(Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;

    .line 885
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$700()Lcom/facebook/CallbackManager;

    move-result-object v1

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$800()Lcom/facebook/FacebookCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 887
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lplugin/facebook/v4a/FacebookController$8;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$902(Lcom/facebook/share/widget/ShareDialog;)Lcom/facebook/share/widget/ShareDialog;

    .line 888
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$900()Lcom/facebook/share/widget/ShareDialog;

    move-result-object v0

    .line 889
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$700()Lcom/facebook/CallbackManager;

    move-result-object v1

    .line 890
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$1000()Lcom/facebook/FacebookCallback;

    move-result-object v2

    .line 888
    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 892
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    iget-object v1, p0, Lplugin/facebook/v4a/FacebookController$8;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$1102(Lcom/facebook/share/widget/GameRequestDialog;)Lcom/facebook/share/widget/GameRequestDialog;

    .line 893
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$1100()Lcom/facebook/share/widget/GameRequestDialog;

    move-result-object v0

    .line 894
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$700()Lcom/facebook/CallbackManager;

    move-result-object v1

    .line 895
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$1200()Lcom/facebook/FacebookCallback;

    move-result-object v2

    .line 893
    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 898
    new-instance v0, Lplugin/facebook/v4a/FacebookController$8$1;

    invoke-direct {v0, p0}, Lplugin/facebook/v4a/FacebookController$8$1;-><init>(Lplugin/facebook/v4a/FacebookController$8;)V

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$1302(Lcom/facebook/AccessTokenTracker;)Lcom/facebook/AccessTokenTracker;

    .line 926
    monitor-enter p0

    .line 927
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 929
    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$1400(Lcom/facebook/AccessToken;)V

    const-string v0, "FacebookController.facebookInit()"

    .line 931
    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$1500(Ljava/lang/String;)V

    .line 932
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Corona"

    const-string v1, "++++++++++: setting finishedFBSDKInit = true"

    .line 934
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$1600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 932
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
