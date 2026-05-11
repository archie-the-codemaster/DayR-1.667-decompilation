.class Lcom/ansca/corona/ViewManager$20;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addVideoView(IIIII)V
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

    .line 955
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$20;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$20;->val$width:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$20;->val$height:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$20;->val$left:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$20;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 958
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 963
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    .line 964
    iget v1, p0, Lcom/ansca/corona/ViewManager$20;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->setId(I)V

    .line 965
    new-instance v1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->setTag(Ljava/lang/Object;)V

    .line 966
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/ansca/corona/ViewManager$20;->val$width:I

    iget v3, p0, Lcom/ansca/corona/ViewManager$20;->val$height:I

    iget v4, p0, Lcom/ansca/corona/ViewManager$20;->val$left:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$20;->val$top:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 967
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->bringToFront()V

    .line 969
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->getVideoView()Lcom/ansca/corona/CoronaVideoView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaVideoView;->setZOrderOnTop(Z)V

    .line 972
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 973
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$20;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
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
