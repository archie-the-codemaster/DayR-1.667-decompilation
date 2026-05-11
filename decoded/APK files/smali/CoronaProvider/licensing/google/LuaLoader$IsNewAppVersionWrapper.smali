.class public LCoronaProvider/licensing/google/LuaLoader$IsNewAppVersionWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IsNewAppVersionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method public constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .line 532
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$IsNewAppVersionWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "isNewAppVersion"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 540
    invoke-static {}, LCoronaProvider/licensing/google/LuaLoader;->isNewAppVersion()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 p1, 0x1

    return p1
.end method
