.class Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;
.super Ljava/lang/Object;
.source "AbstractTableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/util/AbstractTableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/util/AbstractTableMap;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 284
    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 286
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, -0x2

    .line 287
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x3

    .line 289
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 290
    monitor-exit v0

    return v3

    .line 293
    :cond_2
    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v1, 0x0

    .line 294
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 301
    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 303
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, -0x2

    .line 304
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->convertKey(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    const/4 v1, 0x3

    .line 307
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 308
    new-instance v1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    iget-object v3, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :cond_2
    const/4 v1, 0x1

    .line 311
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 312
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 319
    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 321
    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 322
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v1, -0x3

    .line 323
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 325
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
