.class Lplugin/gpgs/Quests$LoadQuestsResultCallback;
.super Ljava/lang/Object;
.source "Quests.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Quests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadQuestsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Quests;


# direct methods
.method constructor <init>(Lplugin/gpgs/Quests;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lplugin/gpgs/Quests$LoadQuestsResultCallback;->this$0:Lplugin/gpgs/Quests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lplugin/gpgs/Quests$LoadQuestsResultCallback;->name:Ljava/lang/String;

    .line 256
    iput-object p3, p0, Lplugin/gpgs/Quests$LoadQuestsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Quests$LoadQuestsResultCallback;->onResult(Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;)V
    .locals 7

    .line 261
    iget-object v0, p0, Lplugin/gpgs/Quests$LoadQuestsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 262
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 263
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 265
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 268
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 271
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;->getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/google/android/gms/games/quest/QuestBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/quest/Quest;

    add-int/lit8 v6, v4, 0x1

    .line 273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Lplugin/gpgs/Utils;->questToHashtable(Lcom/google/android/gms/games/quest/Quest;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    const-string p1, "quests"

    .line 277
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_2
    iget-object p1, p0, Lplugin/gpgs/Quests$LoadQuestsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
