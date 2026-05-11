.class Lcom/ansca/corona/CoronaActivity$SelectVideoActivityResultHandler;
.super Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;
.source "CoronaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectVideoActivityResultHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    const-string v0, "3gp"

    const-string v1, "Video"

    .line 2591
    invoke-direct {p0, p1, v0, v1}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;
    .locals 1

    .line 2596
    new-instance v0, Lcom/ansca/corona/events/VideoPickerTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ansca/corona/events/VideoPickerTask;-><init>(Ljava/lang/String;IJ)V

    return-object v0
.end method

.method protected getColumns()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected handleContentUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2607
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
