.class Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecorderThread"
.end annotation


# static fields
.field private static final ENCODING:I = 0x2

.field static final MAX_BUFFERS:I = 0x5

.field private static final SAMPLE_RATE:I = 0x1f40


# instance fields
.field private myAudioRecordInstance:Landroid/media/AudioRecord;

.field private myBufferSize:I

.field private myBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field private myFrameSeconds:F

.field private myFreeBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/ansca/corona/AudioRecorder;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const p1, 0x3dcccccd    # 0.1f

    .line 652
    iput p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFrameSeconds:F

    .line 655
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    .line 656
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    .line 743
    monitor-exit v0

    return-object v1

    .line 745
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method releaseBuffer(Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;)V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    monitor-enter v0

    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {p1}, Lcom/ansca/corona/AudioRecorder;->access$900(Lcom/ansca/corona/AudioRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 754
    iget-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 755
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 7

    const/16 v0, -0x13

    .line 676
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v0, 0x1f40

    .line 678
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    .line 679
    invoke-static {v1}, Lcom/ansca/corona/AudioRecorder;->access$500(Lcom/ansca/corona/AudioRecorder;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v1

    invoke-interface {v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->audioChannelMono()I

    move-result v1

    const/4 v2, 0x2

    .line 678
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/high16 v1, 0x467a0000    # 16000.0f

    .line 681
    iget v2, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFrameSeconds:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 685
    :goto_0
    iput v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    .line 687
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/16 v3, 0x1f40

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    .line 689
    invoke-static {v1}, Lcom/ansca/corona/AudioRecorder;->access$500(Lcom/ansca/corona/AudioRecorder;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v1

    invoke-interface {v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->audioChannelMono()I

    move-result v4

    const/4 v5, 0x2

    iget v6, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    .line 692
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    iget v2, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-direct {v1, v2}, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 696
    :goto_1
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v0}, Lcom/ansca/corona/AudioRecorder;->access$900(Lcom/ansca/corona/AudioRecorder;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 700
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :try_start_1
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    goto :goto_2

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 704
    new-instance v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    iget v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-direct {v0, v1}, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;-><init>(I)V

    .line 705
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    .line 708
    :try_start_2
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    iget-object v2, v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 710
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v1, :cond_3

    .line 712
    :try_start_3
    iput v1, v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myValidBytes:I

    .line 714
    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$1000(Lcom/ansca/corona/AudioRecorder;I)V

    goto :goto_3

    .line 719
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 721
    :goto_3
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_4
    :goto_4
    const-wide/16 v0, 0xf

    .line 723
    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 705
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 728
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$1000(Lcom/ansca/corona/AudioRecorder;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 732
    :catch_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$1000(Lcom/ansca/corona/AudioRecorder;I)V

    :goto_5
    return-void
.end method

.method startRecording()V
    .locals 0

    .line 665
    invoke-virtual {p0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->start()V

    return-void
.end method

.method stopRecording()V
    .locals 0

    return-void
.end method
