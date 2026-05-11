.class Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSdkVersionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/gpgs/LuaLoader;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V
    .locals 0

    .line 753
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;-><init>(Lplugin/gpgs/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getSdkVersion"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 761
    iget-object v0, p0, Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-static {v0, p1}, Lplugin/gpgs/LuaLoader;->access$2700(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
