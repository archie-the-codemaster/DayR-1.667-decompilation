.class Lcom/ansca/corona/ViewManager$15;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;Landroid/view/View;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$15;->this$0:Lcom/ansca/corona/ViewManager;

    iput-object p2, p0, Lcom/ansca/corona/ViewManager$15;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$15;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 695
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager$15;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$15;->val$view:Landroid/view/View;

    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 700
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 701
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$15;->val$view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    .line 703
    :cond_1
    instance-of v1, v0, Lcom/ansca/corona/maps/MapView;

    if-eqz v1, :cond_2

    .line 704
    check-cast v0, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->destroy()V

    .line 710
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$15;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    return-void
.end method
