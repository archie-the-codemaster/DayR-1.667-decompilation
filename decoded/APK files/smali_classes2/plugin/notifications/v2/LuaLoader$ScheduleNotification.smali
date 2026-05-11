.class Lplugin/notifications/v2/LuaLoader$ScheduleNotification;
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
    name = "ScheduleNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/notifications/v2/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/notifications/v2/LuaLoader;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;-><init>(Lplugin/notifications/v2/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "scheduleNotification"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 12

    const-string v0, "notifications.scheduleNotification(time [, options])"

    .line 439
    invoke-static {v0}, Lplugin/notifications/v2/LuaLoader;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ERROR: "

    if-lt v0, v2, :cond_12

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    goto/16 :goto_5

    .line 449
    :cond_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    const-string v6, "\'"

    const-string v7, "Invalid option \'"

    const-string v8, "WARNING: "

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-ne v0, v5, :cond_1

    goto/16 :goto_2

    .line 453
    :cond_1
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v0, v5, :cond_11

    .line 455
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "year"

    .line 458
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v5, :cond_8

    .line 460
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time.year (number) expected, got "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v5, "month"

    .line 463
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 464
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v5, :cond_8

    .line 465
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time.month (number) expected, got "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v5, "day"

    .line 468
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 469
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v5, :cond_8

    .line 470
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time.day (number) expected, got "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v5, "hour"

    .line 473
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 474
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v5, :cond_8

    .line 475
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time.hour (number) expected, got "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "min"

    .line 478
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 479
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v5, :cond_8

    .line 480
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time.min (number) expected, got "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v5, "sec"

    .line 483
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 484
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v5, :cond_8

    .line 485
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time.sec (number) expected, got "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_7
    iget-object v5, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v8, v0}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_8
    :goto_1
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto/16 :goto_0

    .line 499
    :cond_9
    :goto_2
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 500
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v5, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v0, v5, :cond_f

    .line 502
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_3
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 503
    invoke-virtual {p1, v9}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alert"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 506
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v1, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-eq v0, v1, :cond_e

    .line 507
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.alert (string) expected, got "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v1, "badge"

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 511
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v1, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v0, v1, :cond_e

    .line 512
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.badge (number) expected, got "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v1, "sound"

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 516
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v1, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-eq v0, v1, :cond_e

    .line 517
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.sound (string) expected, got "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const-string v1, "custom"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 521
    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v1, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-eq v0, v1, :cond_e

    .line 522
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.custom (table) expected, got "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 526
    :cond_d
    iget-object v1, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_e
    :goto_4
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto/16 :goto_3

    .line 531
    :cond_f
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options table expected, got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 536
    :cond_10
    invoke-static {p1, v2}, Lcom/ansca/corona/Bridge;->scheduleNotification(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    return p1

    .line 494
    :cond_11
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time (number or table) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 444
    :cond_12
    :goto_5
    iget-object p1, p0, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 1 or 2 arguments, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
