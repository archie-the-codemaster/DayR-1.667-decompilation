.class Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;
.super Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveImageToPhotoLibraryRequestPermissionsResultHandler"
.end annotation


# instance fields
.field private fDestinationFilePathName:Ljava/lang/String;

.field private fFileServices:Lcom/ansca/corona/storage/FileServices;

.field private fSourceFilePathName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/storage/FileServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1313
    invoke-direct {p0, p1}, Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    .line 1315
    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fFileServices:Lcom/ansca/corona/storage/FileServices;

    .line 1316
    iput-object p3, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fSourceFilePathName:Ljava/lang/String;

    .line 1317
    iput-object p4, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fDestinationFilePathName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeSaveMedia()Z
    .locals 4

    .line 1323
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fFileServices:Lcom/ansca/corona/storage/FileServices;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fSourceFilePathName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1325
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 1327
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fFileServices:Lcom/ansca/corona/storage/FileServices;

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fSourceFilePathName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fDestinationFilePathName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ansca/corona/storage/FileServices;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->fDestinationFilePathName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/Controller;->addImageFileToPhotoGallery(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method
