.class Lcom/ansca/corona/AudioRecorder$WavRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AudioRecorder$WavRecorder;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/AudioRecorder$WavRecorder;


# direct methods
.method constructor <init>(Lcom/ansca/corona/AudioRecorder$WavRecorder;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder$1;->this$1:Lcom/ansca/corona/AudioRecorder$WavRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$WavRecorder$1;->this$1:Lcom/ansca/corona/AudioRecorder$WavRecorder;

    invoke-static {v0}, Lcom/ansca/corona/AudioRecorder$WavRecorder;->access$800(Lcom/ansca/corona/AudioRecorder$WavRecorder;)V

    return-void
.end method
