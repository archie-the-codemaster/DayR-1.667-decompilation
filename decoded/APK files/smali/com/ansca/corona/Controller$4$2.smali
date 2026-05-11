.class Lcom/ansca/corona/Controller$4$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$4;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$4;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/ansca/corona/Controller$4$2;->this$1:Lcom/ansca/corona/Controller$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1108
    iget-object p1, p0, Lcom/ansca/corona/Controller$4$2;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object p1, p1, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {p1}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ansca/corona/Controller$4$2;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object p1, p1, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {p1}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1109
    iget-object p1, p0, Lcom/ansca/corona/Controller$4$2;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object p1, p1, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {p1}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/AlertTask;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/events/AlertTask;-><init>(IZ)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 1111
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/Controller$4$2;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object p1, p1, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter p1

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller$4$2;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object v0, v0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/Controller;->access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1113
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
