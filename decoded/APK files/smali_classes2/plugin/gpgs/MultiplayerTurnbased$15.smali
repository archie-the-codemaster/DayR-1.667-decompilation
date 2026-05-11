.class Lplugin/gpgs/MultiplayerTurnbased$15;
.super Ljava/lang/Object;
.source "MultiplayerTurnbased.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerTurnbased;->showSelectPlayers(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerTurnbased;

.field final synthetic val$luaListener:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/Integer;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lplugin/gpgs/MultiplayerTurnbased$15;->this$0:Lplugin/gpgs/MultiplayerTurnbased;

    iput-object p2, p0, Lplugin/gpgs/MultiplayerTurnbased$15;->val$luaListener:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 4

    .line 507
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const-string p1, "showSelectPlayers"

    .line 508
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

    .line 510
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {p1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 512
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "errorMessage"

    invoke-virtual {p1, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_5

    const-string p3, "players"

    .line 516
    invoke-virtual {p4, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 518
    invoke-static {p3}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p3

    const-string v1, "playerIds"

    invoke-virtual {p1, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_2
    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "min_automatch_players"

    .line 521
    invoke-virtual {p4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minPlayers"

    invoke-virtual {p3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "max_automatch_players"

    .line 524
    invoke-virtual {p4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 525
    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "maxPlayers"

    invoke-virtual {p3, v0, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_4
    invoke-virtual {p3}, Ljava/util/Hashtable;->size()I

    move-result p4

    if-lez p4, :cond_5

    const-string p4, "automatch"

    .line 528
    invoke-virtual {p1, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_5
    iget-object p3, p0, Lplugin/gpgs/MultiplayerTurnbased$15;->val$luaListener:Ljava/lang/Integer;

    invoke-static {p3, p1, p2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
