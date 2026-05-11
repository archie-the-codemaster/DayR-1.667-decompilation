.class Lcom/ansca/corona/AudioRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AudioRecorder;->postStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/AudioRecorder;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$1;->this$0:Lcom/ansca/corona/AudioRecorder;

    iput p2, p0, Lcom/ansca/corona/AudioRecorder$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$1;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v0}, Lcom/ansca/corona/AudioRecorder;->access$500(Lcom/ansca/corona/AudioRecorder;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$1;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v1}, Lcom/ansca/corona/AudioRecorder;->access$600(Lcom/ansca/corona/AudioRecorder;)J

    move-result-wide v1

    iget v3, p0, Lcom/ansca/corona/AudioRecorder$1;->val$status:I

    invoke-static {v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->recordCallback(Lcom/ansca/corona/CoronaRuntime;JI)V

    return-void
.end method
