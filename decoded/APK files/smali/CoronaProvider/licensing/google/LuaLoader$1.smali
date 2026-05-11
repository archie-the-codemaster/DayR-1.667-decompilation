.class LCoronaProvider/licensing/google/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/licensing/google/LuaLoader;->callLuaCallback(ZLjava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$isError:Z

.field final synthetic val$isVerified:Z

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(LCoronaProvider/licensing/google/LuaLoader;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    iput-boolean p2, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isVerified:Z

    iput-boolean p3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    iput-object p4, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$errorType:Ljava/lang/String;

    iput-object p5, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5

    .line 245
    :try_start_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "licensing"

    .line 247
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 249
    iget-boolean v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isVerified:Z

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isVerified"

    const/4 v1, -0x2

    .line 250
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 252
    iget-boolean v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    if-eqz v0, :cond_0

    .line 253
    iget-boolean v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const-string v0, "isError"

    .line 257
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 259
    iget-boolean v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$errorType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_1
    const-string v0, "errorType"

    .line 264
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 266
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$response:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "response"

    .line 267
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const-string v0, "google"

    .line 269
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "provider"

    .line 270
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 272
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v0}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/Policy;->getValidityTimestamp()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "expiration"

    .line 273
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 276
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v0}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/Policy;->getExpansionURLCount()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    const/4 v0, 0x0

    .line 278
    :goto_2
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/vending/licensing/Policy;->getExpansionURLCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v3, 0x3

    .line 279
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 281
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/vending/licensing/Policy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v3, "url"

    .line 282
    invoke-virtual {p1, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 284
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v3, "fileName"

    .line 285
    invoke-virtual {p1, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 287
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileSize(I)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v3, "fileSize"

    .line 288
    invoke-virtual {p1, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "expansionFiles"

    .line 293
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 296
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v0}, LCoronaProvider/licensing/google/LuaLoader;->access$600(LCoronaProvider/licensing/google/LuaLoader;)I

    move-result v0

    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
