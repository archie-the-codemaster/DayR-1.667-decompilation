.class Lcom/ansca/corona/ViewManager$34;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addMapView(IIIII)V
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

    .line 1224
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$34;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$34;->val$width:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$34;->val$height:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$34;->val$left:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$34;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1228
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1233
    :cond_0
    new-instance v0, Lcom/ansca/corona/maps/MapView;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/maps/MapView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V

    .line 1234
    iget v1, p0, Lcom/ansca/corona/ViewManager$34;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/maps/MapView;->setId(I)V

    .line 1235
    new-instance v1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/maps/MapView;->setTag(Ljava/lang/Object;)V

    .line 1238
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/ansca/corona/ViewManager$34;->val$width:I

    iget v3, p0, Lcom/ansca/corona/ViewManager$34;->val$height:I

    iget v4, p0, Lcom/ansca/corona/ViewManager$34;->val$left:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$34;->val$top:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1239
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->bringToFront()V

    .line 1243
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1244
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$34;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
