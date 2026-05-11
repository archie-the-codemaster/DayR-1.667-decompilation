.class Lcom/ansca/corona/AudioRecorder$WavRecorder;
.super Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WavRecorder"
.end annotation


# static fields
.field private static final RECORDER_AUDIO_ENCODING:I = 0x2

.field private static final RECORDER_BPP:I = 0x10

.field private static final RECORDER_CHANNELS:I = 0x10

.field private static final RECORDER_SAMPLERATE:I = 0xac44


# instance fields
.field fBufferSize:I

.field volatile fIsRecording:Z

.field fOutputStream:Ljava/io/FileOutputStream;

.field fPath:Ljava/lang/String;

.field fRecorder:Landroid/media/AudioRecord;

.field private fRecordingThread:Ljava/lang/Thread;

.field volatile fTotalRead:J

.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/AudioRecorder;Ljava/lang/String;)V
    .locals 1

    .line 327
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;-><init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V

    .line 308
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecordingThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 325
    iput p1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fBufferSize:I

    .line 328
    iput-object p2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fPath:Ljava/lang/String;

    const p1, 0xac44

    const/16 p2, 0x10

    const/4 v0, 0x2

    .line 329
    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fBufferSize:I

    const-wide/16 p1, 0x0

    .line 330
    iput-wide p1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fTotalRead:J

    return-void
.end method

.method static synthetic access$800(Lcom/ansca/corona/AudioRecorder$WavRecorder;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder$WavRecorder;->writeAudioDataToFile()V

    return-void
.end method

.method private overwriteData(Ljava/lang/String;J)V
    .locals 15

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 437
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rws"

    invoke-direct {v3, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v4, 0x24

    add-long v4, p2, v4

    const-wide/16 v6, 0x4

    .line 440
    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v6, 0xff

    and-long v8, v4, v6

    long-to-int v2, v8

    int-to-byte v2, v2

    const/4 v8, 0x0

    aput-byte v2, v0, v8

    const/16 v2, 0x8

    shr-long v9, v4, v2

    and-long/2addr v9, v6

    long-to-int v10, v9

    int-to-byte v9, v10

    const/4 v10, 0x1

    aput-byte v9, v0, v10

    const/16 v9, 0x10

    shr-long v11, v4, v9

    and-long/2addr v11, v6

    long-to-int v12, v11

    int-to-byte v11, v12

    const/4 v12, 0x2

    aput-byte v11, v0, v12

    const/16 v11, 0x18

    shr-long/2addr v4, v11

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    const/4 v5, 0x3

    aput-byte v4, v0, v5

    .line 446
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v13, 0x28

    .line 449
    invoke-virtual {v3, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    and-long v13, p2, v6

    long-to-int v4, v13

    int-to-byte v4, v4

    aput-byte v4, v0, v8

    shr-long v13, p2, v2

    and-long/2addr v13, v6

    long-to-int v2, v13

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    shr-long v8, p2, v9

    and-long/2addr v8, v6

    long-to-int v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v12

    shr-long v8, p2, v11

    and-long/2addr v6, v8

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 454
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v0

    .line 456
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 459
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_2
    nop

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 468
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 469
    :catch_4
    :cond_2
    throw v0
.end method

.method private writeAudioDataToFile()V
    .locals 14

    .line 378
    iget v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fBufferSize:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 380
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    const v2, 0x15888

    int-to-long v12, v2

    .line 387
    iget-object v4, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x2

    const-wide/32 v9, 0xac44

    const/4 v11, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/ansca/corona/AudioRecorder$WavRecorder;->writeWaveFileHeader(Ljava/io/FileOutputStream;JJJIJ)V

    const-wide/16 v2, 0x0

    .line 390
    iput-wide v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fTotalRead:J

    .line 391
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v2}, Lcom/ansca/corona/AudioRecorder;->access$900(Lcom/ansca/corona/AudioRecorder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 393
    :try_start_1
    iget-object v3, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    const-wide/16 v5, -0x3

    if-ne v3, v4, :cond_1

    .line 394
    iget-object v3, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    iget v4, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fBufferSize:I

    invoke-virtual {v3, v0, v1, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    int-to-long v3, v3

    goto :goto_1

    :cond_1
    move-wide v3, v5

    .line 398
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    .line 401
    :try_start_2
    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 402
    :try_start_3
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 403
    iget-wide v5, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fTotalRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fTotalRead:J

    .line 404
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v0

    .line 398
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 423
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 408
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_3

    .line 411
    :try_start_9
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    .line 413
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catch_1
    nop

    .line 421
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 427
    :catch_2
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$902(Lcom/ansca/corona/AudioRecorder;Z)Z

    return-void

    .line 421
    :goto_5
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_5

    .line 423
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 424
    :catch_3
    :cond_5
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private writeWaveFileHeader(Ljava/io/FileOutputStream;JJJIJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x52

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x49

    aput-byte v4, v1, v3

    const/16 v4, 0x46

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    const/4 v6, 0x3

    aput-byte v4, v1, v6

    const-wide/16 v6, 0xff

    and-long v8, p4, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    const/4 v8, 0x4

    aput-byte v4, v1, v8

    const/16 v4, 0x8

    shr-long v8, p4, v4

    and-long/2addr v8, v6

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x5

    aput-byte v8, v1, v9

    const/16 v8, 0x10

    shr-long v9, p4, v8

    and-long/2addr v9, v6

    long-to-int v10, v9

    int-to-byte v9, v10

    const/4 v10, 0x6

    aput-byte v9, v1, v10

    const/16 v9, 0x18

    shr-long v10, p4, v9

    and-long/2addr v10, v6

    long-to-int v11, v10

    int-to-byte v10, v11

    const/4 v11, 0x7

    aput-byte v10, v1, v11

    const/16 v10, 0x57

    aput-byte v10, v1, v4

    const/16 v10, 0x9

    const/16 v11, 0x41

    aput-byte v11, v1, v10

    const/16 v10, 0xa

    const/16 v11, 0x56

    aput-byte v11, v1, v10

    const/16 v10, 0xb

    const/16 v11, 0x45

    aput-byte v11, v1, v10

    const/16 v10, 0xc

    const/16 v11, 0x66

    aput-byte v11, v1, v10

    const/16 v10, 0xd

    const/16 v11, 0x6d

    aput-byte v11, v1, v10

    const/16 v10, 0x74

    const/16 v11, 0xe

    aput-byte v10, v1, v11

    const/16 v11, 0x20

    const/16 v12, 0xf

    aput-byte v11, v1, v12

    aput-byte v8, v1, v8

    const/16 v12, 0x11

    aput-byte v2, v1, v12

    const/16 v12, 0x12

    aput-byte v2, v1, v12

    const/16 v12, 0x13

    aput-byte v2, v1, v12

    const/16 v12, 0x14

    aput-byte v3, v1, v12

    const/16 v3, 0x15

    aput-byte v2, v1, v3

    move/from16 v3, p8

    int-to-byte v3, v3

    const/16 v12, 0x16

    aput-byte v3, v1, v12

    const/16 v3, 0x17

    aput-byte v2, v1, v3

    and-long v12, p6, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    shr-long v12, p6, v4

    and-long/2addr v12, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x19

    aput-byte v3, v1, v12

    shr-long v12, p6, v8

    and-long/2addr v12, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x1a

    aput-byte v3, v1, v12

    shr-long v12, p6, v9

    and-long/2addr v12, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x1b

    aput-byte v3, v1, v12

    and-long v12, p9, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x1c

    aput-byte v3, v1, v12

    shr-long v12, p9, v4

    and-long/2addr v12, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x1d

    aput-byte v3, v1, v12

    shr-long v12, p9, v8

    and-long/2addr v12, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x1e

    aput-byte v3, v1, v12

    shr-long v12, p9, v9

    and-long/2addr v12, v6

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v12, 0x1f

    aput-byte v3, v1, v12

    aput-byte v5, v1, v11

    const/16 v3, 0x21

    aput-byte v2, v1, v3

    const/16 v3, 0x22

    aput-byte v8, v1, v3

    const/16 v3, 0x23

    aput-byte v2, v1, v3

    const/16 v3, 0x24

    const/16 v5, 0x64

    aput-byte v5, v1, v3

    const/16 v3, 0x61

    const/16 v5, 0x25

    aput-byte v3, v1, v5

    const/16 v5, 0x26

    aput-byte v10, v1, v5

    const/16 v5, 0x27

    aput-byte v3, v1, v5

    and-long v10, p2, v6

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v5, 0x28

    aput-byte v3, v1, v5

    shr-long v3, p2, v4

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x29

    aput-byte v3, v1, v4

    shr-long v3, p2, v8

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x2a

    aput-byte v3, v1, v4

    shr-long v3, p2, v9

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x2b

    aput-byte v3, v1, v4

    move-object v3, p1

    .line 535
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public startRecording()V
    .locals 7

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fIsRecording:Z

    .line 337
    new-instance v0, Landroid/media/AudioRecord;

    iget v6, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fBufferSize:I

    const/4 v2, 0x1

    const v3, 0xac44

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    .line 338
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ansca/corona/AudioRecorder$WavRecorder$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/AudioRecorder$WavRecorder$1;-><init>(Lcom/ansca/corona/AudioRecorder$WavRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecordingThread:Ljava/lang/Thread;

    .line 346
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecording()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 353
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 359
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :try_start_1
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 361
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fTotalRead:J

    invoke-direct {p0, v1, v2, v3}, Lcom/ansca/corona/AudioRecorder$WavRecorder;->overwriteData(Ljava/lang/String;J)V

    .line 362
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecorder:Landroid/media/AudioRecord;

    .line 369
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fRecordingThread:Ljava/lang/Thread;

    .line 370
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder;->fOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method
