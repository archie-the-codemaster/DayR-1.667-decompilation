.class abstract Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SelectMediaRequestPermissionsResultHandler"
.end annotation


# instance fields
.field private fDestinationFilePath:Ljava/lang/String;

.field private fLuaAPI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2621
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->fLuaAPI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract executeSelectMedia()V
.end method

.method protected abstract generateEmptyMediaEvent()Lcom/ansca/corona/events/MediaPickerTask;
.end method

.method protected getDestinationFilePath()Ljava/lang/String;
    .locals 1

    .line 2628
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->fDestinationFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 2645
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2648
    invoke-virtual {p2}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    .line 2651
    :cond_0
    new-instance p2, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2652
    invoke-virtual {p2, p3}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object p2

    sget-object p3, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p2, p3, :cond_1

    .line 2655
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->executeSelectMedia()V

    goto :goto_0

    :cond_1
    const-string p2, "Corona"

    if-eqz p1, :cond_4

    .line 2659
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2661
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2663
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->generateEmptyMediaEvent()Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 2665
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->fLuaAPI:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot continue because there\'s no Corona Runtime Task Dispatcher!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2668
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->fLuaAPI:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot continue because there\'s no Corona Runtime!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2671
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->fLuaAPI:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot continue because there\'s no Corona Activity!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected setDestinationFilePath(Ljava/lang/String;)V
    .locals 0

    .line 2638
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;->fDestinationFilePath:Ljava/lang/String;

    return-void
.end method
