.class public abstract Lcom/naef/jnlua/util/AbstractTableList;
.super Ljava/util/AbstractList;
.source "AbstractTableList.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/naef/jnlua/LuaValueProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/naef/jnlua/LuaValueProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5

    .line 29
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    const/4 v2, -0x1

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    sub-int/2addr v1, p1

    .line 37
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/naef/jnlua/LuaState;->tableMove(IIII)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 p1, -0x2

    .line 39
    invoke-virtual {v0, p1, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 41
    monitor-exit v0

    return-void

    .line 33
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    add-int/lit8 p1, p1, 0x1

    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/naef/jnlua/LuaState;->rawGet(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x2

    .line 56
    :try_start_1
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v1

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7

    .line 65
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    const/4 v3, -0x1

    add-int/lit8 v4, p1, 0x2

    add-int/lit8 v5, p1, 0x1

    sub-int p1, v1, p1

    const/4 v6, 0x1

    sub-int/2addr p1, v6

    .line 74
    invoke-virtual {v0, v3, v4, v5, p1}, Lcom/naef/jnlua/LuaState;->tableMove(IIII)V

    .line 75
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 p1, -0x2

    .line 76
    invoke-virtual {v0, p1, v1}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    .line 77
    invoke-virtual {v0, v6}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 78
    monitor-exit v0

    return-object v2

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 84
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 85
    monitor-enter v0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    .line 93
    invoke-virtual {v0, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 p2, -0x2

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 94
    invoke-virtual {v0, p2, p1}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    .line 95
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 96
    monitor-exit v0

    return-object v1

    .line 88
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 103
    monitor-enter v0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 106
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v1

    :catchall_1
    move-exception v1

    .line 110
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
