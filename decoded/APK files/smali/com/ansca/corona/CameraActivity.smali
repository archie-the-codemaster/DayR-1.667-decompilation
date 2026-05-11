.class public Lcom/ansca/corona/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"


# static fields
.field private static sNextImageFileNumber:I = 0x1


# instance fields
.field private fCameraView:Lcom/ansca/corona/CameraView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 25
    sget v0, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 25
    sget v0, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)Ljava/io/File;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/ansca/corona/CameraActivity;->createCameraShotFileObjectWith(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    return-object p0
.end method

.method public static clearCachedPhotos(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 194
    :goto_0
    sget v2, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    if-ge v1, v2, :cond_1

    .line 196
    :try_start_0
    invoke-static {p0, v1}, Lcom/ansca/corona/CameraActivity;->createCameraShotFileObjectWith(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 202
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    sput v0, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    return-void
.end method

.method private static createCameraShotFileObjectWith(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraShot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lcom/ansca/corona/storage/ResourceServices;

    invoke-direct {p1, p0}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 56
    new-instance v1, Lcom/ansca/corona/CameraView;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CameraView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    .line 57
    iget-object v1, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    new-instance v2, Lcom/ansca/corona/CameraActivity$1;

    invoke-direct {v2, p0}, Lcom/ansca/corona/CameraActivity$1;-><init>(Lcom/ansca/corona/CameraActivity;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CameraView;->setTakePictureListener(Landroid/hardware/Camera$PictureCallback;)V

    .line 122
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/16 v3, 0xc0

    .line 123
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 124
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x50

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 128
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    .line 132
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const-string v5, "ic_menu_camera"

    .line 134
    invoke-virtual {p1, v5}, Lcom/ansca/corona/storage/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 135
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 139
    invoke-virtual {v1, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v5, Lcom/ansca/corona/CameraActivity$2;

    invoke-direct {v5, p0}, Lcom/ansca/corona/CameraActivity$2;-><init>(Lcom/ansca/corona/CameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-static {}, Lcom/ansca/corona/CameraServices;->getCameraCount()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    .line 150
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const-string v2, "ic_menu_refresh"

    .line 153
    invoke-virtual {p1, v2}, Lcom/ansca/corona/storage/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 154
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {p1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 158
    invoke-virtual {v1, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance p1, Lcom/ansca/corona/CameraActivity$3;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CameraActivity$3;-><init>(Lcom/ansca/corona/CameraActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    invoke-virtual {v0}, Lcom/ansca/corona/CameraView;->takePicture()V

    .line 185
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
