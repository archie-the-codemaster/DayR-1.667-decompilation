.class Lcom/ansca/corona/ViewManager$13;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewText(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$13;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$13;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$13;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$13;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/CoronaEditText;

    iget v2, p0, Lcom/ansca/corona/ViewManager$13;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getSelectionStart()I

    move-result v1

    .line 569
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getSelectionEnd()I

    move-result v2

    .line 572
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$13;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v1, v3, :cond_1

    move v1, v3

    :cond_1
    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    const/4 v3, 0x0

    .line 582
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 583
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 584
    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/CoronaEditText;->setSelection(II)V

    return-void
.end method
