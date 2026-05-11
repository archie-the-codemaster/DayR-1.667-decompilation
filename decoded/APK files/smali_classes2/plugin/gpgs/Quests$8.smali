.class Lplugin/gpgs/Quests$8;
.super Ljava/lang/Object;
.source "Quests.java"

# interfaces
.implements Lcom/google/android/gms/games/quest/QuestUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Quests;->setListener(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Quests;

.field final synthetic val$fLuaListener:I


# direct methods
.method constructor <init>(Lplugin/gpgs/Quests;I)V
    .locals 0

    .line 224
    iput-object p1, p0, Lplugin/gpgs/Quests$8;->this$0:Lplugin/gpgs/Quests;

    iput p2, p0, Lplugin/gpgs/Quests$8;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "quest"

    .line 227
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    const/4 v2, 0x0

    .line 228
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p1}, Lplugin/gpgs/Utils;->questToHashtable(Lcom/google/android/gms/games/quest/Quest;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget p1, p0, Lplugin/gpgs/Quests$8;->val$fLuaListener:I

    invoke-static {p1, v1}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :cond_0
    return-void
.end method
