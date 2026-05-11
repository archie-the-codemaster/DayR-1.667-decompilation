.class Lplugin/gpgs/LuaLoader$LoadGameResultCallback;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadGameResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/gpgs/LuaLoader;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;->name:Ljava/lang/String;

    .line 568
    iput-object p3, p0, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 562
    check-cast p1, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;->onResult(Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;)V
    .locals 6

    .line 573
    iget-object v0, p0, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 574
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 575
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isError"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 577
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 580
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;->getGames()Lcom/google/android/gms/games/GameBuffer;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 582
    invoke-virtual {p1, v3}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->gameToHashtable(Lcom/google/android/gms/games/Game;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v3, "game"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/games/GameBuffer;->release()V

    .line 586
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
