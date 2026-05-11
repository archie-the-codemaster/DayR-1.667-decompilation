.class abstract Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SelectMediaActivityResultHandler"
.end annotation


# instance fields
.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fDefaultExtention:Ljava/lang/String;

.field private fDestinationFilePath:Ljava/lang/String;

.field protected fGenericFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2380
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 p1, 0x0

    .line 2381
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDestinationFilePath:Ljava/lang/String;

    .line 2382
    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDefaultExtention:Ljava/lang/String;

    .line 2383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " %d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fGenericFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;)Ljava/lang/String;
    .locals 0

    .line 2369
    iget-object p0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDefaultExtention:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 2369
    iget-object p0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method


# virtual methods
.method protected abstract generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;
.end method

.method protected abstract getColumns()[Ljava/lang/String;
.end method

.method protected abstract handleContentUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 1

    .line 2408
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 2413
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 2418
    :goto_0
    iget-object p4, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDestinationFilePath:Ljava/lang/String;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 2419
    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDestinationFilePath:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p4, p1

    .line 2422
    :goto_1
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDestinationFilePath:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p3, v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 2435
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;

    invoke-direct {p3, p0, p2, p4}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;-><init>(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;Landroid/net/Uri;Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2515
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 2427
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p2, :cond_4

    .line 2429
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p2

    const-wide/16 p3, -0x1

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_4
    return-void
.end method

.method public setDestinationFilePath(Ljava/lang/String;)V
    .locals 0

    .line 2393
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->fDestinationFilePath:Ljava/lang/String;

    return-void
.end method
