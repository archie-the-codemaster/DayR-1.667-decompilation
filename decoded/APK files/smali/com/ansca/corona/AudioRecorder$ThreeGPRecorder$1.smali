.class Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;


# direct methods
.method constructor <init>(Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$1;->this$1:Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 566
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRecorder error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder$1;->this$1:Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;

    invoke-virtual {p1}, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;->stopRecording()V

    return-void
.end method
