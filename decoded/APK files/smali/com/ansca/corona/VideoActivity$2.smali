.class Lcom/ansca/corona/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/VideoActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/VideoActivity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ansca/corona/VideoActivity$2;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 129
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaRuntime;

    .line 130
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    new-instance v2, Lcom/ansca/corona/events/VideoEndedTask;

    iget-object v3, p0, Lcom/ansca/corona/VideoActivity$2;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-static {v3}, Lcom/ansca/corona/VideoActivity;->access$100(Lcom/ansca/corona/VideoActivity;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/ansca/corona/events/VideoEndedTask;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->resumeAll()V

    goto :goto_0

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity$2;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/VideoActivity;->finish()V

    return-void
.end method
