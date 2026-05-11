.class Lplugin/google/iap/v3/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/LuaLoader;->init(Lcom/naef/jnlua/LuaState;)I
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

    .line 157
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lplugin/google/iap/v3/util/IabResult;)V
    .locals 4

    .line 163
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-virtual {p1}, Lplugin/google/iap/v3/util/IabResult;->isSuccess()Z

    move-result v1

    invoke-static {v0, v1}, Lplugin/google/iap/v3/LuaLoader;->access$702(Lplugin/google/iap/v3/LuaLoader;Z)Z

    .line 164
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-virtual {p1}, Lplugin/google/iap/v3/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lplugin/google/iap/v3/LuaLoader;->access$802(Lplugin/google/iap/v3/LuaLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v0}, Lplugin/google/iap/v3/LuaLoader;->access$700(Lplugin/google/iap/v3/LuaLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v0}, Lplugin/google/iap/v3/LuaLoader;->access$1000(Lplugin/google/iap/v3/LuaLoader;)Lplugin/google/iap/v3/util/IabHelper;

    move-result-object v0

    invoke-static {v0}, Lplugin/google/iap/v3/LuaLoader;->access$902(Lplugin/google/iap/v3/util/IabHelper;)Lplugin/google/iap/v3/util/IabHelper;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v0}, Lplugin/google/iap/v3/LuaLoader;->access$800(Lplugin/google/iap/v3/LuaLoader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lplugin/google/iap/v3/LuaLoader;->access$802(Lplugin/google/iap/v3/LuaLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error initializing Google In App Billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v1}, Lplugin/google/iap/v3/LuaLoader;->access$800(Lplugin/google/iap/v3/LuaLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Corona"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    new-instance v0, Lplugin/google/iap/v3/InitRuntimeTask;

    iget-object v1, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v1}, Lplugin/google/iap/v3/LuaLoader;->access$1000(Lplugin/google/iap/v3/LuaLoader;)Lplugin/google/iap/v3/util/IabHelper;

    move-result-object v1

    iget-object v2, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v2}, Lplugin/google/iap/v3/LuaLoader;->access$1100(Lplugin/google/iap/v3/LuaLoader;)I

    move-result v2

    iget-object v3, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v3}, Lplugin/google/iap/v3/LuaLoader;->access$1200(Lplugin/google/iap/v3/LuaLoader;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lplugin/google/iap/v3/InitRuntimeTask;-><init>(Lplugin/google/iap/v3/util/IabHelper;Lplugin/google/iap/v3/util/IabResult;II)V

    .line 175
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader$1;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p1}, Lplugin/google/iap/v3/LuaLoader;->access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method
