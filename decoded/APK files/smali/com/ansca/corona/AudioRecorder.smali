.class public Lcom/ansca/corona/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;,
        Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;,
        Lcom/ansca/corona/AudioRecorder$MemoryRecorder;,
        Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;,
        Lcom/ansca/corona/AudioRecorder$WavRecorder;,
        Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;,
        Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;
    }
.end annotation


# static fields
.field private static final STATUS_ERROR:I = -0x1

.field private static final STATUS_IS_RUNNING:I = -0x3

.field private static final STATUS_NEED_PERMISSION:I = -0x2

.field private static final STATUS_OK:I


# instance fields
.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fHandler:Landroid/os/Handler;

.field private fId:J

.field private fInstance:Lcom/ansca/corona/AudioRecorder;

.field private fIsNotifying:Z

.field private fIsRunning:Z

.field private fPath:Ljava/lang/String;

.field private fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaRuntime;Landroid/os/Handler;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->fIsNotifying:Z

    .line 87
    iput-object p2, p0, Lcom/ansca/corona/AudioRecorder;->fHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 89
    iput-object p0, p0, Lcom/ansca/corona/AudioRecorder;->fInstance:Lcom/ansca/corona/AudioRecorder;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/ansca/corona/AudioRecorder;->hasPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ansca/corona/AudioRecorder;)Lcom/ansca/corona/AudioRecorder;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ansca/corona/AudioRecorder;->fInstance:Lcom/ansca/corona/AudioRecorder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ansca/corona/AudioRecorder;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/ansca/corona/AudioRecorder;->postStatus(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/ansca/corona/AudioRecorder;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ansca/corona/AudioRecorder;->fIsNotifying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/AudioRecorder;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->startRecording()V

    return-void
.end method

.method static synthetic access$500(Lcom/ansca/corona/AudioRecorder;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ansca/corona/AudioRecorder;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ansca/corona/AudioRecorder;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/ansca/corona/AudioRecorder;->fId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/ansca/corona/AudioRecorder;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    return p0
.end method

.method static synthetic access$902(Lcom/ansca/corona/AudioRecorder;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    return p1
.end method

.method private canStartRecording()I
    .locals 6

    .line 98
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->hasMicrophone()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x3

    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v3, "android.permission.RECORD_AUDIO"

    .line 106
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v4

    .line 107
    sget-object v5, Lcom/ansca/corona/AudioRecorder$2;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    invoke-virtual {v4}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    goto :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    const-string v4, "object:startRecording() needs Microphone access!"

    invoke-virtual {v0, v3, v4}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-ne v0, v2, :cond_5

    .line 129
    iput-boolean v1, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    .line 130
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    iget-wide v2, p0, Lcom/ansca/corona/AudioRecorder;->fId:J

    iget-boolean v4, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    invoke-static {v1, v2, v3, v4}, Lcom/ansca/corona/JavaToNativeShim;->setAudioRecorderState(Lcom/ansca/corona/CoronaRuntime;JZ)V

    :cond_5
    return v0
.end method

.method private hasMicrophone()Z
    .locals 3

    .line 242
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Corona"

    const-string v2, "Device does not have a microphone"

    .line 246
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static hasPermission()Z
    .locals 2

    .line 212
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 213
    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v0

    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized postStatus(I)V
    .locals 2

    monitor-enter p0

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->fIsNotifying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 273
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 275
    :try_start_1
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->fIsNotifying:Z

    .line 276
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/AudioRecorder$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/AudioRecorder$1;-><init>(Lcom/ansca/corona/AudioRecorder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private requestMicrophonePermission()V
    .locals 4

    .line 222
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->hasMicrophone()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsSettings;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-direct {v1, v2}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 232
    new-instance v2, Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ansca/corona/AudioRecorder$MicrophoneRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startRecording()V
    .locals 4

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    .line 167
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder;->fPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/AudioRecorder$MemoryRecorder;-><init>(Lcom/ansca/corona/AudioRecorder;Lcom/ansca/corona/AudioRecorder$1;)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    .line 171
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fPath:Ljava/lang/String;

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    new-instance v0, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/AudioRecorder$ThreeGPRecorder;-><init>(Lcom/ansca/corona/AudioRecorder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    goto :goto_0

    .line 180
    :cond_3
    new-instance v0, Lcom/ansca/corona/AudioRecorder$WavRecorder;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/AudioRecorder$WavRecorder;-><init>(Lcom/ansca/corona/AudioRecorder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;->startRecording()V

    .line 186
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    iget-wide v1, p0, Lcom/ansca/corona/AudioRecorder;->fId:J

    iget-boolean v3, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    invoke-static {v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->setAudioRecorderState(Lcom/ansca/corona/CoronaRuntime;JZ)V

    return-void
.end method


# virtual methods
.method getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;->getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;->getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method releaseCurrentBuffer()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;->releaseCurrentBuffer()V

    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 204
    iput-wide p1, p0, Lcom/ansca/corona/AudioRecorder;->fId:J

    return-void
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 2

    .line 142
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder;->fPath:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->canStartRecording()I

    move-result p1

    const/4 v0, -0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->startRecording()V

    const/4 p1, 0x1

    return p1

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/ansca/corona/AudioRecorder;->postStatus(I)V

    return v1

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->requestMicrophonePermission()V

    :cond_2
    return v1
.end method

.method public stopRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->fIsRunning:Z

    .line 194
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->fRecorderImplementation:Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderAbstract;->stopRecording()V

    :cond_0
    return-void
.end method
