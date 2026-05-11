.class Lcom/ansca/corona/ViewManager$40;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->removeAllMapViewMarkers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;I)V
    .locals 0

    .line 1487
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$40;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$40;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1489
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$40;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/maps/MapView;

    iget v2, p0, Lcom/ansca/corona/ViewManager$40;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/maps/MapView;

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->removeAllMarkers()V

    :cond_0
    return-void
.end method
