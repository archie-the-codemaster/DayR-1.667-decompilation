.class Lcom/ansca/corona/ViewManager$21;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->videoViewLoad(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$21;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$21;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$21;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$21;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$21;->val$id:I

    invoke-static {v0, v1}, Lcom/ansca/corona/ViewManager;->access$700(Lcom/ansca/corona/ViewManager;I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$21;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$21;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$21;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ansca/corona/MediaManager;->createVideoURLFromString(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaVideoView;->setVideoURIUsingCoronaProxy(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
