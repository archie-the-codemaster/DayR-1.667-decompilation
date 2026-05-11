.class Lcom/ansca/corona/CoronaVideoView$1;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 163
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0, p1}, Lcom/ansca/corona/CoronaVideoView;->access$002(Lcom/ansca/corona/CoronaVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 171
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$100(Lcom/ansca/corona/CoronaVideoView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaVideoView;->setVolume(F)V

    .line 174
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$200(Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$200(Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/CoronaVideoView$VideoViewPreparedTask;

    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/CoronaVideoView$VideoViewPreparedTask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$300(Lcom/ansca/corona/CoronaVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$1;->this$0:Lcom/ansca/corona/CoronaVideoView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$300(Lcom/ansca/corona/CoronaVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
