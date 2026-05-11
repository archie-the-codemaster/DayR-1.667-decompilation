.class Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishInstallWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebook/v4a/LuaLoader;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;->this$0:Lplugin/facebook/v4a/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "publishInstall"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebook."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p1

    if-eqz p1, :cond_0

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": appId is no longer a required argument. This argument will be ignored."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Corona"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->publishInstall()V

    const/4 p1, 0x0

    return p1
.end method
