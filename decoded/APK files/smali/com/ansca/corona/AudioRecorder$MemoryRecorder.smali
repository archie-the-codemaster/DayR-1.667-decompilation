.class Lcom/ansca/corona/AudioRecorder$MemoryRecorder;
.super Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryRecorder"
.end annotation


# instance fields
.field fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

.field fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/AudioRecorder;)V
    .locals 1

    .line 596
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;-><init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V
    .locals 0

    .line 596
    invoke-direct {p0, p1}, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    return-void
.end method


# virtual methods
.method public getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    return-object v0
.end method

.method public getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 620
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    return-object v0
.end method

.method public declared-synchronized releaseCurrentBuffer()V
    .locals 2

    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->releaseBuffer(Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;)V

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$1102(Lcom/ansca/corona/AudioRecorder;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecording()V
    .locals 2

    .line 601
    new-instance v0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-direct {v0, v1}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    .line 602
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->startRecording()V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->stopRecording()V

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;->fRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    :cond_0
    return-void
.end method
