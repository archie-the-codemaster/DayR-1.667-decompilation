.class Lcom/ansca/corona/ViewManager$16;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setDisplayObjectVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$16;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$16;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$16;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$16;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$16;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 720
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$16;->val$visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$16;->val$visible:Z

    if-eqz v1, :cond_1

    .line 722
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$16;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$16;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectAlpha(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->setDisplayObjectAlpha(IF)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 725
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method
