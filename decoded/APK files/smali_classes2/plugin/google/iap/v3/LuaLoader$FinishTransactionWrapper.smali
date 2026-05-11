.class Lplugin/google/iap/v3/LuaLoader$FinishTransactionWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/google/iap/v3/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishTransactionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/google/iap/v3/LuaLoader;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$FinishTransactionWrapper;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader$FinishTransactionWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "finishTransaction"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
