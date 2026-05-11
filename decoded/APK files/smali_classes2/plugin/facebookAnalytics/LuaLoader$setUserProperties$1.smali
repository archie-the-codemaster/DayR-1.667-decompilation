.class Lplugin/facebookAnalytics/LuaLoader$setUserProperties$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebookAnalytics/LuaLoader$setUserProperties;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/facebookAnalytics/LuaLoader$setUserProperties;


# direct methods
.method constructor <init>(Lplugin/facebookAnalytics/LuaLoader$setUserProperties;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$setUserProperties$1;->this$1:Lplugin/facebookAnalytics/LuaLoader$setUserProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 0

    return-void
.end method
