.class public abstract Lcom/naef/jnlua/util/AbstractTableMap;
.super Ljava/util/AbstractMap;
.source "AbstractTableMap.java"

# interfaces
.implements Lcom/naef/jnlua/LuaValueProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/util/AbstractTableMap$Entry;,
        Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;,
        Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/naef/jnlua/LuaValueProxy;"
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected acceptKey(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected checkKey(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 p1, -0x2

    .line 54
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->getTable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, -0x1

    const/4 v1, 0x2

    .line 56
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw p1

    :catchall_1
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected abstract convertKey(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet:Ljava/util/Set;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method protected filterKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 65
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 67
    monitor-enter v0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 69
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 p1, -0x2

    .line 70
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->getTable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, -0x1

    const/4 v1, 0x2

    .line 72
    :try_start_1
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw p1

    :catchall_1
    move-exception p1

    .line 76
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 86
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 p1, -0x3

    .line 88
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    const/4 p1, 0x1

    .line 89
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 90
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 98
    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    .line 101
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 p1, -0x3

    .line 103
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    const/4 p1, 0x1

    .line 104
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 105
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
