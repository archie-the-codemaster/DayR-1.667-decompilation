.class Lcom/ansca/corona/CoronaActivity$TakePictureWithCoronaActivityResultHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TakePictureWithCoronaActivityResultHandler"
.end annotation


# instance fields
.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 3220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3221
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakePictureWithCoronaActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 3236
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    if-eqz p4, :cond_0

    .line 3241
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3243
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3249
    :goto_0
    iget-object p2, p0, Lcom/ansca/corona/CoronaActivity$TakePictureWithCoronaActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p2, :cond_1

    .line 3250
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p2

    new-instance p3, Lcom/ansca/corona/events/ImagePickerTask;

    invoke-direct {p3, p1}, Lcom/ansca/corona/events/ImagePickerTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    return-void
.end method
