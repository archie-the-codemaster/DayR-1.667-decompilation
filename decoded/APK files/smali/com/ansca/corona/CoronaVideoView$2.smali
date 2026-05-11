.class Lcom/ansca/corona/CoronaVideoView$2;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaVideoView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaVideoView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaVideoView;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$2;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$2;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$200(Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$2;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$200(Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/CoronaVideoView$VideoViewEndedTask;

    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$2;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/CoronaVideoView$VideoViewEndedTask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$2;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$400(Lcom/ansca/corona/CoronaVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$2;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$400(Lcom/ansca/corona/CoronaVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
