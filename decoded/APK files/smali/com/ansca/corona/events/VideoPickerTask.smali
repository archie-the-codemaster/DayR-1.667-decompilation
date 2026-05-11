.class public Lcom/ansca/corona/events/VideoPickerTask;
.super Lcom/ansca/corona/events/MediaPickerTask;
.source "VideoPickerTask.java"


# instance fields
.field private fDuration:I

.field private fSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/ansca/corona/events/MediaPickerTask;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/ansca/corona/events/VideoPickerTask;->fDuration:I

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/ansca/corona/events/VideoPickerTask;->fSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/ansca/corona/events/MediaPickerTask;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/ansca/corona/events/VideoPickerTask;->fDuration:I

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/ansca/corona/events/VideoPickerTask;->fSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/ansca/corona/events/MediaPickerTask;-><init>(Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lcom/ansca/corona/events/VideoPickerTask;->fDuration:I

    .line 33
    iput-wide p3, p0, Lcom/ansca/corona/events/VideoPickerTask;->fSize:J

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4

    .line 41
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ansca/corona/events/MediaPickerTask;->fSelectedMediaFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/events/VideoPickerTask;->fDuration:I

    iget-wide v2, p0, Lcom/ansca/corona/events/VideoPickerTask;->fSize:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->videoPickerEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/events/MediaPickerTask;->fSelectedMediaFileName:Ljava/lang/String;

    iget v1, p0, Lcom/ansca/corona/events/VideoPickerTask;->fDuration:I

    iget-wide v2, p0, Lcom/ansca/corona/events/VideoPickerTask;->fSize:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->videoPickerEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;IJ)V

    :goto_0
    return-void
.end method
