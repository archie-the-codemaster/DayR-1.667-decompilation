.class Lplugin/notifications/v2/LuaLoader$CancelNotification;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/notifications/v2/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/notifications/v2/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/notifications/v2/LuaLoader;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$CancelNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lplugin/notifications/v2/LuaLoader$CancelNotification;-><init>(Lplugin/notifications/v2/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cancelNotification"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "notifications.cancelNotification( [notificationId] )"

    .line 561
    invoke-static {v0}, Lplugin/notifications/v2/LuaLoader;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 564
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ERROR: "

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 566
    iget-object p1, p0, Lplugin/notifications/v2/LuaLoader$CancelNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0 or 1 arguments, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 571
    :cond_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v4, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v4, :cond_1

    .line 573
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$CancelNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationId (number) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_1
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    invoke-static {}, Lcom/ansca/corona/Bridge;->cancelAllNotifications()V

    goto :goto_0

    .line 581
    :cond_2
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    .line 582
    invoke-static {p1}, Lcom/ansca/corona/Bridge;->cancelNotification(I)V

    :goto_0
    return v1
.end method
