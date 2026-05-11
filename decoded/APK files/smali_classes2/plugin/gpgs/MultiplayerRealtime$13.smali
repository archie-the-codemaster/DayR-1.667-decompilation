.class Lplugin/gpgs/MultiplayerRealtime$13;
.super Ljava/lang/Object;
.source "MultiplayerRealtime.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerRealtime;->show(Lcom/naef/jnlua/LuaState;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerRealtime;

.field final synthetic val$luaListener:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerRealtime;Ljava/lang/Integer;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lplugin/gpgs/MultiplayerRealtime$13;->this$0:Lplugin/gpgs/MultiplayerRealtime;

    iput-object p2, p0, Lplugin/gpgs/MultiplayerRealtime$13;->val$luaListener:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 3

    .line 434
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const-string p1, "show"

    .line 435
    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    const-string p2, "type"

    const-string v0, "waitingRoom"

    .line 436
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    const-string v1, "players"

    .line 439
    invoke-virtual {p4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 441
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    :cond_0
    const-string v1, "min_automatch_players"

    .line 443
    invoke-virtual {p4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minAutoMatchPlayers"

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "max_automatch_players"

    .line 446
    invoke-virtual {p4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "maxAutoMatchPlayers"

    invoke-virtual {p2, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p4, -0x1

    const/4 v1, 0x1

    if-eq p3, p4, :cond_3

    if-eqz p3, :cond_3

    const/4 p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    .line 451
    :goto_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v2, "isError"

    invoke-virtual {p2, v2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    const-string p3, "cancelled"

    goto :goto_1

    :cond_5
    const-string p3, "selected"

    :goto_1
    const-string p4, "phase"

    .line 453
    invoke-virtual {p2, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object p2, p0, Lplugin/gpgs/MultiplayerRealtime$13;->val$luaListener:Ljava/lang/Integer;

    invoke-static {p2, p1, v1}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
