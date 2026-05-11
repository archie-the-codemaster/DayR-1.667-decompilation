.class public Lcom/ansca/corona/CoronaLua;
.super Ljava/lang/Object;
.source "CoronaLua.java"


# static fields
.field public static final NOREF:I = -0x2

.field public static final REFNIL:I = -0x1

.field private static REF_OWNER:I = -0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteRef(Lcom/naef/jnlua/LuaState;I)V
    .locals 1

    if-lez p1, :cond_0

    .line 85
    sget v0, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    invoke-virtual {p0, v0, p1}, Lcom/naef/jnlua/LuaState;->unref(II)V

    :cond_0
    return-void
.end method

.method public static dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const-string v1, "name"

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 128
    sget-object v1, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v1, v3, :cond_4

    .line 130
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    sget v3, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    invoke-virtual {p0, v3, p1}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->call(II)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0, v2, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x2

    .line 153
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->insert(I)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 156
    invoke-virtual {p0, v4, p2}, Lcom/naef/jnlua/LuaState;->call(II)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Lua::DispatchEvent()] ERROR: Table listener\'s property \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a function."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 165
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Lua::DispatchEvent()] ERROR: Listener must be a function or a table, not a \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 170
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "[Lua::DispatchEvent()] ERROR: Attempt to dispatch malformed event. The event must have a \'name\' string property."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 173
    :goto_1
    invoke-virtual {p0, v4}, Lcom/naef/jnlua/LuaState;->pop(I)V

    if-nez p1, :cond_5

    return-void

    .line 176
    :cond_5
    throw p1
.end method

.method public static dispatchRuntimeEvent(Lcom/naef/jnlua/LuaState;I)V
    .locals 2

    const-string v0, "Runtime"

    .line 372
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "dispatchEvent"

    .line 373
    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v0, -0x3

    .line 374
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->insert(I)V

    const/4 v0, -0x2

    .line 375
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->insert(I)V

    const/4 v0, 0x2

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/naef/jnlua/LuaState;->call(II)V

    return-void
.end method

.method public static isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z
    .locals 2

    .line 189
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 p1, -0x1

    .line 193
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v0

    const/4 p1, 0x1

    .line 194
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    :cond_0
    return v0
.end method

.method public static newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 102
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, -0x2

    const-string v0, "name"

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public static newRef(Lcom/naef/jnlua/LuaState;I)I
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 74
    sget p1, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->ref(I)I

    move-result p0

    return p0
.end method

.method public static normalize(Lcom/naef/jnlua/LuaState;I)I
    .locals 0

    if-gez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p1, p0, 0x1

    :cond_0
    return p1
.end method

.method public static pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 351
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 354
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ansca/corona/CoronaLua;->pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ansca/corona/CoronaLua;->pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 2

    .line 316
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 319
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto :goto_0

    .line 320
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 321
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto :goto_0

    .line 322
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 323
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto :goto_0

    .line 324
    :cond_3
    instance-of v0, p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    .line 325
    check-cast p1, Ljava/util/Hashtable;

    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaLua;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    return-void
.end method

.method public static toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 277
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 279
    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    invoke-virtual {p0, p1, v2}, Lcom/naef/jnlua/LuaState;->checkType(ILcom/naef/jnlua/LuaType;)V

    .line 280
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x2

    .line 283
    invoke-static {p0, v2}, Lcom/ansca/corona/CoronaLua;->toValue(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 291
    invoke-static {p0, v3}, Lcom/ansca/corona/CoronaLua;->toValue(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :goto_1
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static toValue(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    if-gez p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    :cond_0
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    .line 220
    sget-object v3, Lcom/ansca/corona/CoronaLua$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v2}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "system"

    .line 235
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    const/4 v2, -0x1

    const-string v3, "pathForTable"

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v3, -0x2

    .line 237
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 239
    invoke-virtual {p0, v0, v0}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 241
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    .line 242
    sget-object v4, Lcom/ansca/corona/CoronaLua$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v0, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaLua;->toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;

    move-result-object p1

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 250
    :goto_1
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_2

    .line 228
    :cond_4
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 225
    :cond_5
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method
