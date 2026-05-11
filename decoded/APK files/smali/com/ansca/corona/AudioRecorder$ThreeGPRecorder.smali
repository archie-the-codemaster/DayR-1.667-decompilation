.class Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;
.super Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeGPRecorder"
.end annotation


# instance fields
.field fMediaRecorder:Landroid/media/MediaRecorder;

.field fPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/AudioRecorder;Ljava/lang/String;)V
    .locals 1

    .line 544
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;-><init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V

    .line 545
    iput-object p2, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startRecording()V
    .locals 2

    .line 550
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 557
    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    .line 558
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 559
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 560
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 561
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$1;-><init>(Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 571
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$2;-><init>(Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 580
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$1000(Lcom/ansca/corona/AudioRecorder;I)V

    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 591
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->fMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method
