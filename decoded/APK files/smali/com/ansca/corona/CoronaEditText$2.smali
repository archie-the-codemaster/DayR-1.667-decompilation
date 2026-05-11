.class Lcom/ansca/corona/CoronaEditText$2;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 77
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getInputType()I

    move-result p1

    const/high16 p3, 0x20000

    and-int/2addr p1, p3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance p2, Lcom/ansca/corona/events/TextTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    invoke-direct {p2, v1, v0, p3}, Lcom/ansca/corona/events/TextTask;-><init>(IZZ)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_2
    return v0
.end method
