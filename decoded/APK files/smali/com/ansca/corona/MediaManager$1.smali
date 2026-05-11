.class Lcom/ansca/corona/MediaManager$1;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MediaManager;->loadSound(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MediaManager;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/ansca/corona/MediaManager;J)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$1;->this$0:Lcom/ansca/corona/MediaManager;

    iput-wide p2, p0, Lcom/ansca/corona/MediaManager$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 109
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 110
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$1;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$1;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-wide p2, p0, Lcom/ansca/corona/MediaManager$1;->val$id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$1;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$1;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance p2, Lcom/ansca/corona/events/SoundEndedTask;

    iget-wide v0, p0, Lcom/ansca/corona/MediaManager$1;->val$id:J

    invoke-direct {p2, v0, v1}, Lcom/ansca/corona/events/SoundEndedTask;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
