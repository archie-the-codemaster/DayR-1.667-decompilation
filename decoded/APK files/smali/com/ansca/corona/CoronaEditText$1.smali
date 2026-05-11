.class Lcom/ansca/corona/CoronaEditText$1;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaEditText;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 70
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaEditText;->access$102(Lcom/ansca/corona/CoronaEditText;Z)Z

    .line 72
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/TextTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/ansca/corona/events/TextTask;-><init>(IZZ)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method
