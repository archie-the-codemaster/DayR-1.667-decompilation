.class Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadBitmapResult"
.end annotation


# instance fields
.field private fBitmap:Landroid/graphics/Bitmap;

.field private fHeight:I

.field private fRotationInDegrees:I

.field private fScaleFactor:F

.field private fWidth:I


# direct methods
.method public constructor <init>(IIFI)V
    .locals 1

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    .line 739
    iput p1, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fWidth:I

    .line 740
    iput p2, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fHeight:I

    .line 741
    iput p3, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fScaleFactor:F

    .line 742
    iput p4, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fRotationInDegrees:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FI)V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 731
    iput p1, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fWidth:I

    .line 732
    iput p1, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fHeight:I

    .line 733
    iput p2, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fScaleFactor:F

    .line 734
    iput p3, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fRotationInDegrees:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 764
    :cond_0
    iget v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fHeight:I

    return v0
.end method

.method public getRotationInDegrees()I
    .locals 1

    .line 772
    iget v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fRotationInDegrees:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 768
    iget v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fScaleFactor:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 757
    :cond_0
    iget v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fWidth:I

    return v0
.end method

.method public wasSuccessful()Z
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
