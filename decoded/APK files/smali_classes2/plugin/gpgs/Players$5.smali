.class Lplugin/gpgs/Players$5;
.super Ljava/lang/Object;
.source "Players.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Players;->showSearch(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Players;

.field final synthetic val$luaListener:I


# direct methods
.method constructor <init>(Lplugin/gpgs/Players;I)V
    .locals 0

    .line 194
    iput-object p1, p0, Lplugin/gpgs/Players$5;->this$0:Lplugin/gpgs/Players;

    iput p2, p0, Lplugin/gpgs/Players$5;->val$luaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 4

    .line 197
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const-string p1, "showSearch"

    .line 198
    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {p1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "errorCode"

    invoke-virtual {p1, v0, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "errorMessage"

    invoke-virtual {p1, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const-string p3, "player_search_results"

    .line 205
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Parcelable;

    .line 206
    check-cast p3, Lcom/google/android/gms/games/Player;

    invoke-static {p3}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object p3

    const-string p4, "player"

    invoke-virtual {p1, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_2
    :goto_1
    iget p3, p0, Lplugin/gpgs/Players$5;->val$luaListener:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
