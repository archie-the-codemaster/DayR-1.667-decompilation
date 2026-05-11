.class Lcom/ansca/corona/CoronaActivity$SelectVideoRequestPermissionsResultHandler;
.super Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;
.source "CoronaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectVideoRequestPermissionsResultHandler"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2713
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected executeSelectMedia()V
    .locals 1

    .line 2719
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2724
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->showSelectVideoWindow()V

    return-void
.end method

.method protected generateEmptyMediaEvent()Lcom/ansca/corona/events/MediaPickerTask;
    .locals 1

    .line 2729
    new-instance v0, Lcom/ansca/corona/events/VideoPickerTask;

    invoke-direct {v0}, Lcom/ansca/corona/events/VideoPickerTask;-><init>()V

    return-object v0
.end method
