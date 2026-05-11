.class Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractTableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/util/AbstractTableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/util/AbstractTableMap;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    .line 234
    instance-of v0, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 238
    :cond_0
    check-cast p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    .line 239
    invoke-static {p1}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->access$200(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Lcom/naef/jnlua/LuaState;

    move-result-object v0

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-static {p1}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->access$300(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 195
    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 197
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :cond_0
    const/4 v1, -0x2

    .line 198
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x3

    .line 200
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v1, 0x0

    .line 201
    monitor-exit v0

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 205
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 247
    instance-of v0, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 251
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    .line 252
    invoke-static {v0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->access$200(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Lcom/naef/jnlua/LuaState;

    move-result-object v0

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 256
    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 258
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v2, -0x2

    .line 259
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->getTable(I)V

    const/4 v2, -0x1

    .line 260
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 261
    :cond_2
    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 p1, -0x3

    .line 265
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    .line 267
    :cond_3
    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 268
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 212
    monitor-enter v0

    const/4 v1, 0x0

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 215
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 v2, -0x2

    .line 217
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v4, v2}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 221
    :cond_0
    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 224
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->tableSize(I)I

    move-result v1

    .line 226
    :cond_2
    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 227
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
