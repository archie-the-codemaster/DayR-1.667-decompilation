.class Lcom/ansca/corona/input/RaiseKeyEventTask$1;
.super Ljava/lang/Object;
.source "RaiseKeyEventTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/input/RaiseKeyEventTask;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/input/RaiseKeyEventTask;


# direct methods
.method constructor <init>(Lcom/ansca/corona/input/RaiseKeyEventTask;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ansca/corona/input/RaiseKeyEventTask$1;->this$0:Lcom/ansca/corona/input/RaiseKeyEventTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 102
    :cond_1
    new-instance v1, Lcom/ansca/corona/input/CoronaKeyEvent;

    iget-object v2, p0, Lcom/ansca/corona/input/RaiseKeyEventTask$1;->this$0:Lcom/ansca/corona/input/RaiseKeyEventTask;

    invoke-static {v2}, Lcom/ansca/corona/input/RaiseKeyEventTask;->access$000(Lcom/ansca/corona/input/RaiseKeyEventTask;)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/input/CoronaKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Corona"

    const-string v2, "Exception was caught in activity.dispatchKeyEvent"

    .line 105
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
