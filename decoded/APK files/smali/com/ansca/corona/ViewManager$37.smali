.class Lcom/ansca/corona/ViewManager$37;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setMapType(ILcom/ansca/corona/maps/MapType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$mapType:Lcom/ansca/corona/maps/MapType;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILcom/ansca/corona/maps/MapType;)V
    .locals 0

    .line 1444
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$37;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$37;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$37;->val$mapType:Lcom/ansca/corona/maps/MapType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1446
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$37;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/maps/MapView;

    iget v2, p0, Lcom/ansca/corona/ViewManager$37;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/maps/MapView;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$37;->val$mapType:Lcom/ansca/corona/maps/MapType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/maps/MapView;->setMapType(Lcom/ansca/corona/maps/MapType;)V

    :cond_0
    return-void
.end method
