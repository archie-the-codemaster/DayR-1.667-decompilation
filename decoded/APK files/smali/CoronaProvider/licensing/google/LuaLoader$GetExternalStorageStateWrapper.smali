.class LCoronaProvider/licensing/google/LuaLoader$GetExternalStorageStateWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetExternalStorageStateWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .line 495
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$GetExternalStorageStateWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$GetExternalStorageStateWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getExternalStorageState"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 503
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
