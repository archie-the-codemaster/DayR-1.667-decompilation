.class Lplugin/gpgs/Requests$10;
.super Ljava/lang/Object;
.source "Requests.java"

# interfaces
.implements Lcom/google/android/gms/games/request/OnRequestReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Requests;->setListener(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Requests;

.field final synthetic val$fLuaListener:I


# direct methods
.method constructor <init>(Lplugin/gpgs/Requests;I)V
    .locals 0

    .line 352
    iput-object p1, p0, Lplugin/gpgs/Requests$10;->this$0:Lplugin/gpgs/Requests;

    iput p2, p0, Lplugin/gpgs/Requests$10;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestReceived(Lcom/google/android/gms/games/request/GameRequest;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "request"

    .line 355
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "phase"

    const-string v3, "received"

    .line 356
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 357
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {p1}, Lplugin/gpgs/Utils;->gameRequestToHashtable(Lcom/google/android/gms/games/request/GameRequest;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget p1, p0, Lplugin/gpgs/Requests$10;->val$fLuaListener:I

    invoke-static {p1, v1}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method public onRequestRemoved(Ljava/lang/String;)V
    .locals 3

    const-string v0, "request"

    .line 364
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "removed"

    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 366
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestId"

    .line 367
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget p1, p0, Lplugin/gpgs/Requests$10;->val$fLuaListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method
