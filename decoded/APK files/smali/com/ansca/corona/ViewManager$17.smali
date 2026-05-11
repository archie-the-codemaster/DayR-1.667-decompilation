.class Lcom/ansca/corona/ViewManager$17;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->displayObjectUpdateScreenBounds(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$height:I

.field final synthetic val$id:I

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IIIII)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$17;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$17;->val$width:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$17;->val$height:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$17;->val$left:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$17;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 737
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$17;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 740
    instance-of v1, v0, Lcom/ansca/corona/CoronaEditText;

    if-eqz v1, :cond_0

    .line 741
    move-object v1, v0

    check-cast v1, Lcom/ansca/corona/CoronaEditText;

    .line 742
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/ansca/corona/ViewManager$17;->val$width:I

    .line 743
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ansca/corona/ViewManager$17;->val$height:I

    .line 744
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/ansca/corona/ViewManager$17;->val$left:I

    .line 745
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/ansca/corona/ViewManager$17;->val$top:I

    .line 746
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingTop()I

    move-result v1

    sub-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_0

    .line 749
    :cond_0
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/ansca/corona/ViewManager$17;->val$width:I

    iget v3, p0, Lcom/ansca/corona/ViewManager$17;->val$height:I

    iget v4, p0, Lcom/ansca/corona/ViewManager$17;->val$left:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$17;->val$top:I

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 751
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
