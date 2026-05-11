.class public Lcom/ansca/corona/events/ImagePickerTask;
.super Lcom/ansca/corona/events/MediaPickerTask;
.source "ImagePickerTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ansca/corona/events/MediaPickerTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ansca/corona/events/MediaPickerTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ansca/corona/events/ImagePickerTask;->fSelectedMediaFileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ansca/corona/JavaToNativeShim;->imagePickerEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V

    return-void
.end method
