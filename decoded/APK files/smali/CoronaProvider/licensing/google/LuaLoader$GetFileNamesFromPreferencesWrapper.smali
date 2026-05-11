.class public LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;
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
    name = "GetFileNamesFromPreferencesWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method public constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .line 545
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getFileNamesFromPreferences"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    .line 553
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v0}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileNameCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 554
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 555
    :goto_0
    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v2}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileNameCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 556
    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v2}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 557
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
