.class Lplugin/gpgs/MultiplayerRealtime$12;
.super Ljava/lang/Object;
.source "MultiplayerRealtime.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerRealtime;->showSelectPlayers(Lcom/naef/jnlua/LuaState;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerRealtime;

.field final synthetic val$isLegacy:Z

.field final synthetic val$luaListener:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerRealtime;ZLjava/lang/Integer;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lplugin/gpgs/MultiplayerRealtime$12;->this$0:Lplugin/gpgs/MultiplayerRealtime;

    iput-boolean p2, p0, Lplugin/gpgs/MultiplayerRealtime$12;->val$isLegacy:Z

    iput-object p3, p0, Lplugin/gpgs/MultiplayerRealtime$12;->val$luaListener:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 7

    .line 353
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const-string p1, "showSelectPlayers"

    .line 354
    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    .line 356
    iget-boolean p2, p0, Lplugin/gpgs/MultiplayerRealtime$12;->val$isLegacy:Z

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "max_automatch_players"

    const-string v3, "min_automatch_players"

    const-string v4, "players"

    const/4 v5, 0x0

    if-nez p2, :cond_5

    if-eq p3, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 358
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "isError"

    invoke-virtual {p1, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "errorMessage"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_a

    .line 364
    invoke-virtual {p4, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 365
    invoke-virtual {p4, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 366
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    const-string p3, "playerIds"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_2
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 369
    invoke-virtual {p4, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 370
    invoke-virtual {p4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "minPlayers"

    invoke-virtual {p2, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_3
    invoke-virtual {p4, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 373
    invoke-virtual {p4, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "maxPlayers"

    invoke-virtual {p2, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_4
    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result p3

    if-lez p3, :cond_a

    const-string p3, "automatch"

    .line 376
    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p2, "type"

    const-string v6, "selectPlayers"

    .line 380
    invoke-virtual {p1, p2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    if-eqz p4, :cond_8

    .line 383
    invoke-virtual {p4, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 384
    invoke-virtual {p4, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 385
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    .line 387
    :cond_6
    invoke-virtual {p4, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 388
    invoke-virtual {p4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "minAutoMatchPlayers"

    invoke-virtual {p2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_7
    invoke-virtual {p4, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 391
    invoke-virtual {p4, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v2, "maxAutoMatchPlayers"

    invoke-virtual {p2, v2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-ne p3, v1, :cond_9

    const-string p3, "selected"

    goto :goto_1

    :cond_9
    const-string p3, "cancelled"

    :goto_1
    const-string p4, "phase"

    .line 394
    invoke-virtual {p2, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "data"

    .line 395
    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_a
    :goto_2
    iget-object p2, p0, Lplugin/gpgs/MultiplayerRealtime$12;->val$luaListener:Ljava/lang/Integer;

    invoke-static {p2, p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
