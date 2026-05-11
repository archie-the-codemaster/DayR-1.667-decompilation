.class Lplugin/gpgs/LuaLoader$2;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/LuaLoader;->loadImage(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/LuaLoader;

.field final synthetic val$loadImageCallback:Lplugin/gpgs/LuaLoader$LoadImageCallback;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$LoadImageCallback;Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$2;->this$0:Lplugin/gpgs/LuaLoader;

    iput-object p2, p0, Lplugin/gpgs/LuaLoader$2;->val$loadImageCallback:Lplugin/gpgs/LuaLoader$LoadImageCallback;

    iput-object p3, p0, Lplugin/gpgs/LuaLoader$2;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 348
    iget-object v0, p0, Lplugin/gpgs/LuaLoader$2;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-static {v0}, Lplugin/gpgs/LuaLoader;->access$1700(Lplugin/gpgs/LuaLoader;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lplugin/gpgs/LuaLoader$2;->val$loadImageCallback:Lplugin/gpgs/LuaLoader$LoadImageCallback;

    iget-object v2, p0, Lplugin/gpgs/LuaLoader$2;->val$uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    return-void
.end method
