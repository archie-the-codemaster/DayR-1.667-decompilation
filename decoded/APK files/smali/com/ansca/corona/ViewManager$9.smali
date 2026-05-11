.class Lcom/ansca/corona/ViewManager$9;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextSelection(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$endPositionFinal:I

.field final synthetic val$id:I

.field final synthetic val$startPositionFinal:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;III)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$9;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$9;->val$startPositionFinal:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$9;->val$endPositionFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/CoronaEditText;

    iget v2, p0, Lcom/ansca/corona/ViewManager$9;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 458
    iget v2, p0, Lcom/ansca/corona/ViewManager$9;->val$startPositionFinal:I

    .line 459
    iget v3, p0, Lcom/ansca/corona/ViewManager$9;->val$endPositionFinal:I

    if-le v2, v1, :cond_1

    move v2, v1

    move v3, v2

    :cond_1
    if-le v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const/4 v3, 0x0

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-le v2, v1, :cond_5

    move v2, v1

    .line 481
    :cond_5
    invoke-virtual {v0, v2, v1}, Lcom/ansca/corona/CoronaEditText;->setSelection(II)V

    return-void
.end method
