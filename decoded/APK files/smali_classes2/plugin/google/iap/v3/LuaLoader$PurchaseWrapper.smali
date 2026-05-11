.class Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;
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
    name = "PurchaseWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/google/iap/v3/LuaLoader;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "purchase"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 449
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v0, p1}, Lplugin/google/iap/v3/LuaLoader;->access$1600(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
