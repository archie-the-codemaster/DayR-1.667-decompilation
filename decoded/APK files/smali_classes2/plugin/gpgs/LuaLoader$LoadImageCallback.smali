.class Lplugin/gpgs/LuaLoader$LoadImageCallback;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageCallback"
.end annotation


# instance fields
.field private baseDir:Lplugin/gpgs/LuaUtils$LuaLightuserdata;

.field private filename:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/gpgs/LuaLoader;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;Ljava/lang/String;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p2, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->name:Ljava/lang/String;

    .line 599
    iput-object p3, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->luaListener:Ljava/lang/Integer;

    .line 600
    iput-object p4, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->filename:Ljava/lang/String;

    .line 601
    iput-object p5, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->baseDir:Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    .line 602
    iput-object p6, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->filepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 613
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 614
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 615
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v0, 0x0

    .line 618
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->filepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 620
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 621
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 622
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 623
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x3

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t write to the file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x3

    goto :goto_0

    :catch_1
    move-exception p2

    const/4 v0, 0x2

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create the file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    goto :goto_0

    .line 636
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image not found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 639
    :goto_0
    iget-object v2, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->name:Ljava/lang/String;

    invoke-static {v2}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 640
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 642
    iget-object p2, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->filename:Ljava/lang/String;

    const-string v0, "filename"

    invoke-virtual {v2, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object p2, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->baseDir:Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    const-string v0, "baseDir"

    invoke-virtual {v2, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "width"

    invoke-virtual {v2, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v2, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 647
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "errorCode"

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorMessage"

    .line 648
    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v2, p3}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    .line 651
    iget-object p1, p0, Lplugin/gpgs/LuaLoader$LoadImageCallback;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-static {p1}, Lplugin/gpgs/LuaLoader;->access$1800(Lplugin/gpgs/LuaLoader;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
