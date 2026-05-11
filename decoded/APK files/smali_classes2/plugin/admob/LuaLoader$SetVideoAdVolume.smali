.class Lplugin/admob/LuaLoader$SetVideoAdVolume;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetVideoAdVolume"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lplugin/admob/LuaLoader$SetVideoAdVolume;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 1105
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$SetVideoAdVolume;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "setVideoAdVolume"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "admob.setVideoAdVolume( videoAdVolume )"

    .line 1125
    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lplugin/admob/LuaLoader$SetVideoAdVolume;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1700(Lplugin/admob/LuaLoader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1132
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const-string v2, "ERROR: "

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 1134
    iget-object p1, p0, Lplugin/admob/LuaLoader$SetVideoAdVolume;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 1 argument, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1140
    :cond_1
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v4, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v0, v4, :cond_2

    .line 1141
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v2

    double-to-float p1, v2

    .line 1148
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setAppVolume(F)V

    return v1

    .line 1144
    :cond_2
    iget-object v0, p0, Lplugin/admob/LuaLoader$SetVideoAdVolume;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoAdVolume (number) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
