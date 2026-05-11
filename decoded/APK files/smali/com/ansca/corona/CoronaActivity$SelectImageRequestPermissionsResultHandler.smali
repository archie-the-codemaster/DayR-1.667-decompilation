.class Lcom/ansca/corona/CoronaActivity$SelectImageRequestPermissionsResultHandler;
.super Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;
.source "CoronaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectImageRequestPermissionsResultHandler"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2687
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;-><init>(Ljava/lang/String;)V

    .line 2688
    invoke-virtual {p0, p2}, Lcom/ansca/corona/CoronaActivity$SelectImageRequestPermissionsResultHandler;->setDestinationFilePath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected executeSelectMedia()V
    .locals 2

    .line 2694
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2699
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity$SelectImageRequestPermissionsResultHandler;->getDestinationFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->showSelectImageWindowUsing(Ljava/lang/String;)V

    return-void
.end method

.method protected generateEmptyMediaEvent()Lcom/ansca/corona/events/MediaPickerTask;
    .locals 1

    .line 2704
    new-instance v0, Lcom/ansca/corona/events/ImagePickerTask;

    invoke-direct {v0}, Lcom/ansca/corona/events/ImagePickerTask;-><init>()V

    return-object v0
.end method
