.class Lcom/ansca/corona/Controller$OpenUrlRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenUrlRequestPermissionsResultHandler"
.end annotation


# instance fields
.field private fUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Lcom/ansca/corona/Controller$OpenUrlRequestPermissionsResultHandler;->fUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 803
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 806
    invoke-virtual {p2}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    .line 808
    new-instance p2, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {p2, p1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string p3, "android.permission.CALL_PHONE"

    .line 810
    invoke-virtual {p2, p3}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object p2

    sget-object p3, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p2, p3, :cond_1

    .line 815
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 819
    iget-object p2, p0, Lcom/ansca/corona/Controller$OpenUrlRequestPermissionsResultHandler;->fUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Corona"

    const-string p2, "Controller.OpenUrlRequestPermissionsResultHandler.onHandleRequestPermissionsResult(): Can\'t open this URL as there\'s no PermissionsSettings corresponding to the permission request related to opening this URL!"

    .line 826
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
