.class Lcom/ansca/corona/Controller$5;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->cancelNativeAlert(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$buttonIndex:I

.field final synthetic val$theDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$5;->val$theDialog:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/ansca/corona/Controller$5;->val$buttonIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1163
    iget-object v0, p0, Lcom/ansca/corona/Controller$5;->val$theDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1164
    iget-object v0, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/events/AlertTask;

    iget v2, p0, Lcom/ansca/corona/Controller$5;->val$buttonIndex:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/events/AlertTask;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method
