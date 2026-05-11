.class Lcom/ansca/corona/ViewManager$24;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->videoViewSeek(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;II)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$24;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$24;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$24;->val$id:I

    invoke-static {v0, v1}, Lcom/ansca/corona/ViewManager;->access$700(Lcom/ansca/corona/ViewManager;I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    iget v1, p0, Lcom/ansca/corona/ViewManager$24;->val$time:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method
