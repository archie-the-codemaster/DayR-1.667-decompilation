.class abstract Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AudioRecorderAbstract"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/AudioRecorder;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    return-void
.end method


# virtual methods
.method public getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseCurrentBuffer()V
    .locals 0

    return-void
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopRecording()V
.end method
