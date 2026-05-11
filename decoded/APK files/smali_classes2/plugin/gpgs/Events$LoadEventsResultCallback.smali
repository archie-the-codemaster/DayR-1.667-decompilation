.class Lplugin/gpgs/Events$LoadEventsResultCallback;
.super Ljava/lang/Object;
.source "Events.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEventsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Events;


# direct methods
.method constructor <init>(Lplugin/gpgs/Events;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lplugin/gpgs/Events$LoadEventsResultCallback;->this$0:Lplugin/gpgs/Events;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lplugin/gpgs/Events$LoadEventsResultCallback;->name:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lplugin/gpgs/Events$LoadEventsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/google/android/gms/games/event/Events$LoadEventsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Events$LoadEventsResultCallback;->onResult(Lcom/google/android/gms/games/event/Events$LoadEventsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/event/Events$LoadEventsResult;)V
    .locals 9

    .line 116
    iget-object v0, p0, Lplugin/gpgs/Events$LoadEventsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 123
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 126
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getEvents()Lcom/google/android/gms/games/event/EventBuffer;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/games/event/EventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/event/Event;

    .line 128
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 129
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    move-result-object v7

    const-string v8, "description"

    invoke-static {v6, v8, v7}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "formattedSteps"

    invoke-static {v6, v8, v7}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "imageUri"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v7

    invoke-static {v7}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object v7

    const-string v8, "player"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "steps"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {v5}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "isVisible"

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/games/event/EventBuffer;->release()V

    const-string p1, "events"

    .line 141
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_2
    iget-object p1, p0, Lplugin/gpgs/Events$LoadEventsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
