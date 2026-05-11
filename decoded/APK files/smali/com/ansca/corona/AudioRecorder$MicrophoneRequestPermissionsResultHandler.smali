.class Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MicrophoneRequestPermissionsResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/AudioRecorder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    return-void
.end method


# virtual methods
.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 72
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    .line 79
    :cond_0
    invoke-static {}, Lcom/ansca/corona/AudioRecorder;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {p1}, Lcom/ansca/corona/AudioRecorder;->access$100(Lcom/ansca/corona/AudioRecorder;)Lcom/ansca/corona/AudioRecorder;

    move-result-object p1

    invoke-static {p1}, Lcom/ansca/corona/AudioRecorder;->access$200(Lcom/ansca/corona/AudioRecorder;)V

    :cond_1
    return-void
.end method
