.class abstract Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SaveMediaRequestPermissionsResultHandler"
.end annotation


# instance fields
.field protected fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method protected constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method


# virtual methods
.method public abstract executeSaveMedia()Z
.end method

.method public handleSaveMedia()Z
    .locals 4

    .line 1213
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1215
    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v2

    .line 1216
    sget-object v3, Lcom/ansca/corona/NativeToJavaBridge$3;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    invoke-virtual {v2}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;->executeSaveMedia()Z

    move-result v0

    return v0

    .line 1224
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1226
    new-instance v2, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v2, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v0, v2, p0}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    goto :goto_0

    :cond_1
    const-string v2, "Saving Images requires access to the device\'s Storage!"

    .line 1219
    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 1244
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1247
    invoke-virtual {p2}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    .line 1251
    :cond_0
    new-instance p2, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {p2, p1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1252
    invoke-virtual {p2, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object p1

    sget-object p2, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p1, p2, :cond_1

    .line 1254
    invoke-virtual {p0}, Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;->executeSaveMedia()Z

    :cond_1
    return-void
.end method
