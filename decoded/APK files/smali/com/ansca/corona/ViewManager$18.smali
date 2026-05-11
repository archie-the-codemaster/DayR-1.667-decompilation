.class Lcom/ansca/corona/ViewManager$18;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setDisplayObjectAlpha(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$alpha:F

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IF)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$18;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$18;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 786
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$18;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 789
    iget v1, p0, Lcom/ansca/corona/ViewManager$18;->val$alpha:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 798
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 799
    instance-of v4, v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    if-eqz v4, :cond_2

    .line 800
    check-cast v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "alpha"

    invoke-virtual {v2, v5, v4}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const v2, 0x3f7ff972    # 0.9999f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    .line 804
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 805
    instance-of v2, v0, Landroid/webkit/WebView;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/ansca/corona/maps/MapView;

    if-eqz v2, :cond_4

    .line 808
    :cond_3
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/ansca/corona/ViewManager;->access$600(Lcom/ansca/corona/ViewManager;Landroid/view/View;Z)V

    .line 811
    :cond_4
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x0

    .line 812
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 813
    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 814
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 817
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    :goto_1
    return-void
.end method
