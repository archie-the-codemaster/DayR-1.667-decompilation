.class Lplugin/admob/LuaLoader$BeaconListener;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeaconListener"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lplugin/admob/LuaLoader$BeaconListener;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$BeaconListener;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
