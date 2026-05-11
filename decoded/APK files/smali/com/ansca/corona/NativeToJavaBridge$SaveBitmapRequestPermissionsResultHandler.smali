.class Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;
.super Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBitmapRequestPermissionsResultHandler"
.end annotation


# instance fields
.field private fAddToPhotoLibrary:Z

.field private fBitmap:Landroid/graphics/Bitmap;

.field private fFilePathName:Ljava/lang/String;

.field private fQuality:I


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 0

    .line 1273
    invoke-direct {p0, p1}, Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    .line 1275
    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fBitmap:Landroid/graphics/Bitmap;

    .line 1276
    iput p3, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fQuality:I

    .line 1277
    iput-object p4, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fFilePathName:Ljava/lang/String;

    .line 1278
    iput-boolean p5, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fAddToPhotoLibrary:Z

    return-void
.end method


# virtual methods
.method public executeSaveMedia()Z
    .locals 4

    .line 1292
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fQuality:I

    iget-object v3, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fFilePathName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/Controller;->saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-boolean v1, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fAddToPhotoLibrary:Z

    if-eqz v1, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fFilePathName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/Controller;->addImageFileToPhotoGallery(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public handleSaveMedia()Z
    .locals 1

    .line 1284
    iget-boolean v0, p0, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->fAddToPhotoLibrary:Z

    if-eqz v0, :cond_0

    .line 1285
    invoke-super {p0}, Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;->handleSaveMedia()Z

    move-result v0

    return v0

    .line 1287
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->executeSaveMedia()Z

    move-result v0

    return v0
.end method
