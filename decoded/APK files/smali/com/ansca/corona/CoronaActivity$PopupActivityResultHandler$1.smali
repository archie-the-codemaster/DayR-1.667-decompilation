.class Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;

.field final synthetic val$popupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;Ljava/lang/String;)V
    .locals 0

    .line 3396
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;->this$1:Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;->val$popupName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3399
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;->this$1:Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity;->access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3400
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;->this$1:Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity;->access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;->val$popupName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->popupClosedEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
