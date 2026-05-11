.class Lplugin/facebook/v4a/FacebookController$8$1;
.super Lcom/facebook/AccessTokenTracker;
.source "FacebookController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookController$8;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookController$8;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$8$1;->this$0:Lplugin/facebook/v4a/FacebookController$8;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 2

    .line 911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "++++++++++: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FacebookController.sAccessTokenTracker.onCurrentAccessTokenChanged.accessTokenToLuaTask.executeUsing()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Corona"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->logThreadSignature(Ljava/lang/String;)V

    .line 922
    invoke-static {p2}, Lplugin/facebook/v4a/FacebookController;->access$1400(Lcom/facebook/AccessToken;)V

    return-void
.end method
