.class Lplugin/notifications/v2/LuaLoader$Subscribe$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/notifications/v2/LuaLoader$Subscribe;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/notifications/v2/LuaLoader$Subscribe;

.field final synthetic val$fTopic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/notifications/v2/LuaLoader$Subscribe;Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$Subscribe$1;->this$1:Lplugin/notifications/v2/LuaLoader$Subscribe;

    iput-object p2, p0, Lplugin/notifications/v2/LuaLoader$Subscribe$1;->val$fTopic:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 352
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    iget-object v1, p0, Lplugin/notifications/v2/LuaLoader$Subscribe$1;->val$fTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
