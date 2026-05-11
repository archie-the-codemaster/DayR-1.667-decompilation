.class Lcom/ansca/corona/Controller$4$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1081
    iput-object p1, p0, Lcom/ansca/corona/Controller$4$1;->this$1:Lcom/ansca/corona/Controller$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    if-gez p2, :cond_3

    const/4 v0, -0x3

    if-eq p2, v0, :cond_2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 1098
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/Controller$4$1;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object v0, v0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ansca/corona/Controller$4$1;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object v0, v0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1099
    iget-object v0, p0, Lcom/ansca/corona/Controller$4$1;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object v0, v0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/events/AlertTask;

    invoke-direct {v1, p2, p1}, Lcom/ansca/corona/events/AlertTask;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 1101
    :cond_4
    iget-object p1, p0, Lcom/ansca/corona/Controller$4$1;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object p1, p1, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter p1

    .line 1102
    :try_start_0
    iget-object p2, p0, Lcom/ansca/corona/Controller$4$1;->this$1:Lcom/ansca/corona/Controller$4;

    iget-object p2, p2, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/ansca/corona/Controller;->access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1103
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
