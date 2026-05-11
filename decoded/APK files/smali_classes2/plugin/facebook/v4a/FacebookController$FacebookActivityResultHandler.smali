.class Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/FacebookController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FacebookActivityResultHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebook/v4a/FacebookController$1;)V
    .locals 0

    .line 1170
    invoke-direct {p0}, Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 2

    .line 1179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "++++++++++: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FacebookController.FacebookActivityResultHandler.onHandleActivityResult()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Corona"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$700()Lcom/facebook/CallbackManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1182
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$700()Lcom/facebook/CallbackManager;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 1185
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Facebook\'s Callback manager isn\'t initialized. Be sure to initialize the callback manager before the FacebookActivityResultHandler is called."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
