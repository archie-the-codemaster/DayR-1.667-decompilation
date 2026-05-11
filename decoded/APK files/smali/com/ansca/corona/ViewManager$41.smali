.class Lcom/ansca/corona/ViewManager$41;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setMapCenter(IDDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$isAnimated:Z

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IDDZ)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$41;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$41;->val$id:I

    iput-wide p3, p0, Lcom/ansca/corona/ViewManager$41;->val$latitude:D

    iput-wide p5, p0, Lcom/ansca/corona/ViewManager$41;->val$longitude:D

    iput-boolean p7, p0, Lcom/ansca/corona/ViewManager$41;->val$isAnimated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1500
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$41;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/maps/MapView;

    iget v2, p0, Lcom/ansca/corona/ViewManager$41;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ansca/corona/maps/MapView;

    if-eqz v1, :cond_0

    .line 1502
    iget-wide v2, p0, Lcom/ansca/corona/ViewManager$41;->val$latitude:D

    iget-wide v4, p0, Lcom/ansca/corona/ViewManager$41;->val$longitude:D

    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$41;->val$isAnimated:Z

    invoke-virtual/range {v1 .. v6}, Lcom/ansca/corona/maps/MapView;->setCenter(DDZ)V

    :cond_0
    return-void
.end method
