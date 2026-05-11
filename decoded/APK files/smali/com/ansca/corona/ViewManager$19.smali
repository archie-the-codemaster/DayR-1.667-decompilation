.class Lcom/ansca/corona/ViewManager$19;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setDisplayObjectBackground(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$19;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$19;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 828
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$19;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$19;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 834
    :cond_0
    instance-of v1, v0, Lcom/ansca/corona/maps/MapView;

    if-eqz v1, :cond_1

    return-void

    .line 839
    :cond_1
    instance-of v1, v0, Landroid/webkit/WebView;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 842
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 843
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 847
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$19;->this$0:Lcom/ansca/corona/ViewManager;

    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    invoke-static {v1, v0, v2}, Lcom/ansca/corona/ViewManager;->access$600(Lcom/ansca/corona/ViewManager;Landroid/view/View;Z)V

    goto :goto_3

    .line 852
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 855
    iget-boolean v3, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    :cond_5
    return-void

    .line 862
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 863
    instance-of v4, v3, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 864
    check-cast v3, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    goto :goto_1

    :cond_7
    move-object v3, v5

    :goto_1
    const-string v4, "backgroundDrawable"

    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    .line 867
    invoke-virtual {v3, v4}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 868
    instance-of v7, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    .line 869
    move-object v1, v6

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 876
    :cond_8
    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    if-eqz v6, :cond_9

    if-nez v1, :cond_9

    .line 877
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 878
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 881
    :cond_9
    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    if-eqz v2, :cond_a

    move-object v5, v1

    :cond_a
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    :goto_2
    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$19;->val$isVisible:Z

    if-nez v2, :cond_b

    if-eqz v3, :cond_b

    .line 886
    invoke-virtual {v3, v4, v1}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :cond_b
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
