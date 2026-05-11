.class Lcom/ansca/corona/MediaManager$2;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 121
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    iput-wide p2, p0, Lcom/ansca/corona/MediaManager$2;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 124
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-wide v0, p0, Lcom/ansca/corona/MediaManager$2;->val$id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {p1}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/SoundEndedTask;

    iget-wide v1, p0, Lcom/ansca/corona/MediaManager$2;->val$id:J

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/events/SoundEndedTask;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    return-void
.end method
