.class Lcom/ansca/corona/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addTextView(IIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$height:I

.field final synthetic val$id:I

.field final synthetic val$isSingleLine:Z

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IIIIIZ)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$1;->val$width:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$1;->val$height:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$1;->val$left:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$1;->val$top:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$1;->val$id:I

    iput-boolean p7, p0, Lcom/ansca/corona/ViewManager$1;->val$isSingleLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaEditText;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    .line 273
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/ansca/corona/ViewManager$1;->val$width:I

    .line 274
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/ansca/corona/ViewManager$1;->val$height:I

    .line 275
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ansca/corona/ViewManager$1;->val$left:I

    .line 276
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/ansca/corona/ViewManager$1;->val$top:I

    .line 277
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 278
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget v1, p0, Lcom/ansca/corona/ViewManager$1;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setId(I)V

    .line 280
    new-instance v1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setTag(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->bringToFront()V

    const/high16 v1, -0x1000000

    .line 282
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setTextColor(I)V

    .line 283
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$1;->val$isSingleLine:Z

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setSingleLine(Z)V

    const/4 v1, 0x6

    .line 284
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setImeOptions(I)V

    .line 287
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 288
    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$1;->val$isSingleLine:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x30

    :goto_0
    or-int/2addr v1, v2

    .line 289
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setGravity(I)V

    .line 292
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setNextFocusDownId(I)V

    .line 293
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setNextFocusUpId(I)V

    .line 294
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setNextFocusLeftId(I)V

    .line 295
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setNextFocusRightId(I)V

    .line 298
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
