.class Lplugin/google/iap/v3/LuaLoader$4;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/LuaLoader;->purchaseSubscription(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/LuaLoader;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$4;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 288
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 289
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader$4;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p1}, Lplugin/google/iap/v3/LuaLoader;->access$1000(Lplugin/google/iap/v3/LuaLoader;)Lplugin/google/iap/v3/util/IabHelper;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader$4;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p1}, Lplugin/google/iap/v3/LuaLoader;->access$1000(Lplugin/google/iap/v3/LuaLoader;)Lplugin/google/iap/v3/util/IabHelper;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lplugin/google/iap/v3/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method
