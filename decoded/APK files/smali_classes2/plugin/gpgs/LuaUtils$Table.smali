.class Lplugin/gpgs/LuaUtils$Table;
.super Ljava/lang/Object;
.source "LuaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# instance fields
.field private L:Lcom/naef/jnlua/LuaState;

.field private hashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private scheme:Lplugin/gpgs/LuaUtils$Scheme;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;I)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lplugin/gpgs/LuaUtils$Table;->L:Lcom/naef/jnlua/LuaState;

    .line 236
    iput p2, p0, Lplugin/gpgs/LuaUtils$Table;->index:I

    return-void
.end method

.method private toHashtable(Lcom/naef/jnlua/LuaState;ILjava/util/ArrayList;)Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p2, :cond_0

    const/16 v1, -0x2710

    if-le p2, v1, :cond_0

    .line 526
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, 0x1

    .line 529
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 530
    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    invoke-virtual {p1, p2, v2}, Lcom/naef/jnlua/LuaState;->checkType(ILcom/naef/jnlua/LuaType;)V

    .line 531
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    if-eqz p3, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 534
    :goto_0
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 536
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v4, v5, :cond_2

    .line 537
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    :cond_2
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v4, v5, :cond_3

    .line 540
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "#"

    .line 541
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    const/4 v3, -0x1

    .line 544
    invoke-direct {p0, p1, v3, p3}, Lplugin/gpgs/LuaUtils$Table;->toValue(Lcom/naef/jnlua/LuaState;ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 546
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 534
    :cond_5
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private toValue(Lcom/naef/jnlua/LuaState;ILjava/util/ArrayList;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p2, :cond_0

    const/16 v1, -0x2710

    if-le p2, v1, :cond_0

    .line 437
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, 0x1

    :cond_0
    const/4 v1, 0x0

    .line 440
    iget-object v2, p0, Lplugin/gpgs/LuaUtils$Table;->scheme:Lplugin/gpgs/LuaUtils$Scheme;

    if-nez v2, :cond_6

    .line 441
    sget-object v2, Lplugin/gpgs/LuaUtils$2;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_4

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    goto/16 :goto_1

    .line 455
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lplugin/gpgs/LuaUtils$Table;->toHashtable(Lcom/naef/jnlua/LuaState;ILjava/util/ArrayList;)Ljava/util/Hashtable;

    move-result-object v1

    goto/16 :goto_1

    .line 452
    :cond_2
    new-instance v1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Lplugin/gpgs/LuaUtils$LuaLightuserdata;-><init>(J)V

    goto/16 :goto_1

    .line 449
    :cond_3
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_1

    .line 446
    :cond_4
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_1

    .line 443
    :cond_5
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    const-string v2, "."

    .line 459
    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 460
    iget-object v3, p0, Lplugin/gpgs/LuaUtils$Table;->scheme:Lplugin/gpgs/LuaUtils$Scheme;

    invoke-virtual {v3, v2}, Lplugin/gpgs/LuaUtils$Scheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 461
    sget-object v3, Lplugin/gpgs/LuaUtils$2;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "listener"

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 501
    :pswitch_0
    sget-object p3, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    if-ne v2, p3, :cond_7

    .line 502
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    .line 503
    :cond_7
    instance-of p3, v2, [Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 504
    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 505
    aget-object p3, v2, v5

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 506
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    .line 496
    :pswitch_1
    sget-object p3, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    if-ne v2, p3, :cond_c

    .line 497
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_1

    .line 511
    :pswitch_2
    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_8

    .line 512
    invoke-direct {p0, p1, p2, p3}, Lplugin/gpgs/LuaUtils$Table;->toHashtable(Lcom/naef/jnlua/LuaState;ILjava/util/ArrayList;)Ljava/util/Hashtable;

    move-result-object v1

    goto/16 :goto_1

    .line 513
    :cond_8
    instance-of p3, v2, [Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 514
    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 515
    aget-object p3, v2, v5

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    aget-object p3, v2, v0

    invoke-static {p1, p2, p3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 516
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 491
    :pswitch_3
    sget-object p3, Lcom/naef/jnlua/LuaType;->LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

    if-ne v2, p3, :cond_c

    .line 492
    new-instance v1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Lplugin/gpgs/LuaUtils$LuaLightuserdata;-><init>(J)V

    goto :goto_1

    .line 486
    :pswitch_4
    sget-object p3, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v2, p3, :cond_c

    .line 487
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 481
    :pswitch_5
    sget-object p3, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-eq v2, p3, :cond_9

    sget-object p3, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeNumeric:Ljava/lang/Integer;

    if-ne v2, p3, :cond_c

    .line 482
    :cond_9
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    .line 463
    :pswitch_6
    sget-object p3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, p3, :cond_a

    .line 464
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 465
    :cond_a
    sget-object p3, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeNumeric:Ljava/lang/Integer;

    if-ne v2, p3, :cond_b

    .line 466
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 469
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    move-object v1, p1

    goto :goto_1

    .line 476
    :cond_b
    sget-object p3, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeByteArray:Ljava/lang/Integer;

    if-ne v2, p3, :cond_c

    .line 477
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toByteArray(I)[B

    move-result-object v1

    :cond_c
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object p1, p0, Lplugin/gpgs/LuaUtils$Table;->hashtable:Ljava/util/Hashtable;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\\."

    .line 423
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Table;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 426
    :cond_1
    instance-of v4, v0, Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    .line 427
    check-cast v0, Ljava/util/Hashtable;

    .line 428
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 255
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method getByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 350
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getByteArray(Ljava/lang/String;[B)[B
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method getByteArrayNotNull(Ljava/lang/String;)[B
    .locals 3

    .line 358
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 362
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Table\'s property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a byte array."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 298
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 293
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method getIntegerNotNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 306
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Table\'s property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a number."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getLightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;
    .locals 1

    .line 376
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getLightuserdata(Ljava/lang/String;Ljava/lang/Long;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;
    .locals 2

    .line 367
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getLightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 371
    :cond_0
    new-instance p1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lplugin/gpgs/LuaUtils$LuaLightuserdata;-><init>(J)V

    return-object p1
.end method

.method getLightuserdataNull(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;
    .locals 3

    .line 384
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getLightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 388
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Table\'s property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a lightuserdata."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getListener(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 402
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getListener(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 324
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 319
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method getLongNotNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 332
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Table\'s property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a number."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 272
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method getStringNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 280
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Table\'s property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTable(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaUtils$Table;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;
    .locals 2

    .line 240
    iput-object p1, p0, Lplugin/gpgs/LuaUtils$Table;->scheme:Lplugin/gpgs/LuaUtils$Scheme;

    .line 241
    iget-object p1, p0, Lplugin/gpgs/LuaUtils$Table;->L:Lcom/naef/jnlua/LuaState;

    iget v0, p0, Lplugin/gpgs/LuaUtils$Table;->index:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lplugin/gpgs/LuaUtils$Table;->toHashtable(Lcom/naef/jnlua/LuaState;ILjava/util/ArrayList;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lplugin/gpgs/LuaUtils$Table;->hashtable:Ljava/util/Hashtable;

    return-object p0
.end method
