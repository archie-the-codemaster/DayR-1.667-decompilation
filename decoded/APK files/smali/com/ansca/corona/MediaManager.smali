.class public Lcom/ansca/corona/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# static fields
.field private static final SOUNDPOOL_STREAMS:I = 0x4


# instance fields
.field private myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

.field private myContext:Landroid/content/Context;

.field private myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private myHandler:Landroid/os/Handler;

.field private myIdToSoundPoolIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myMediaPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mySoundPool:Landroid/media/SoundPool;

.field private myVolume:F


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/ansca/corona/MediaManager;->myContext:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/ansca/corona/MediaManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ansca/corona/MediaManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method public static createVideoURLFromString(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rtsp:"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file:"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "content:"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 428
    :cond_1
    invoke-static {p1, p0}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 420
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static onUsingAudio()V
    .locals 3

    .line 389
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getVolumeControlStream()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    return-void

    .line 400
    :cond_1
    new-instance v1, Lcom/ansca/corona/MediaManager$4;

    invoke-direct {v1, v0}, Lcom/ansca/corona/MediaManager$4;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAudioRecorder(J)Lcom/ansca/corona/AudioRecorder;
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 373
    new-instance v1, Lcom/ansca/corona/AudioRecorder;

    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v1, v2, v0}, Lcom/ansca/corona/AudioRecorder;-><init>(Lcom/ansca/corona/CoronaRuntime;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/AudioRecorder;->setId(J)V

    .line 376
    iget-object p1, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    return-object p1
.end method

.method public getVolume(J)F
    .locals 0

    .line 367
    iget p1, p0, Lcom/ansca/corona/MediaManager;->myVolume:F

    return p1
.end method

.method public init()V
    .locals 4

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public loadEventSound(JLjava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_3

    .line 143
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-static {}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    .line 158
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v1, p3}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v1, p3}, Lcom/ansca/corona/storage/FileServices;->openAssetFileDescriptorFor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 162
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    .line 163
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p3, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p3

    .line 168
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public loadSound(JLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    const-string v1, "/"

    .line 81
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Could not load sound "

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "http:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    :cond_0
    invoke-static {p3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 92
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x3

    .line 93
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/ansca/corona/MediaManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 102
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_4
    new-instance p3, Lcom/ansca/corona/MediaManager$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/ansca/corona/MediaManager$1;-><init>(Lcom/ansca/corona/MediaManager;J)V

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 121
    new-instance p3, Lcom/ansca/corona/MediaManager$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/ansca/corona/MediaManager$2;-><init>(Lcom/ansca/corona/MediaManager;J)V

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 134
    iget-object p3, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public pauseAll()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ansca/corona/MediaManager;->pauseMedia(J)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ansca/corona/MediaManager;->pauseMedia(J)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public pauseMedia(J)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 236
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 244
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    :cond_2
    if-eqz v1, :cond_3

    .line 248
    iget-object p1, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->pause(I)V

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public playMedia(JZ)V
    .locals 9

    .line 175
    invoke-static {}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    .line 179
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 186
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 189
    :cond_1
    iget-object p3, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    if-eqz p3, :cond_2

    .line 190
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    :cond_2
    if-eqz v1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/ansca/corona/MediaManager;->myContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 195
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p3

    int-to-float p3, p3

    .line 196
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    int-to-float p1, p1

    div-float v5, p3, p1

    .line 199
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    if-nez p1, :cond_3

    .line 201
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playSound failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public playVideo(JLjava/lang/String;Z)V
    .locals 9

    .line 313
    iget-object v3, p0, Lcom/ansca/corona/MediaManager;->myContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 318
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/MediaManager;->pauseAll()V

    .line 326
    iget-object v7, p0, Lcom/ansca/corona/MediaManager;->myHandler:Landroid/os/Handler;

    new-instance v8, Lcom/ansca/corona/MediaManager$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/MediaManager$3;-><init>(Lcom/ansca/corona/MediaManager;Ljava/lang/String;Landroid/content/Context;JZ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    .line 68
    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    .line 69
    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public resumeAll()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ansca/corona/MediaManager;->resumeMedia(J)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ansca/corona/MediaManager;->resumeMedia(J)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public resumeMedia(J)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 262
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 270
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    :cond_2
    if-eqz v1, :cond_3

    .line 274
    iget-object p1, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->resume(I)V

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public setVolume(JF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_1
    const/4 v0, 0x0

    .line 352
    iget-object v1, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 353
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/MediaPlayer;

    :cond_2
    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {v0, p3, p3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 359
    :cond_3
    iput p3, p0, Lcom/ansca/corona/MediaManager;->myVolume:F

    return-void
.end method

.method public stopMedia(J)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 218
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    :cond_2
    if-eqz v1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->stop(I)V

    :cond_3
    :goto_1
    return-void
.end method
