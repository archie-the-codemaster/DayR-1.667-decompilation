.class Lcom/naef/jnlua/JavaModule$New;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "New"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$New;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "new"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    .line 179
    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-class v0, Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p1, v0}, Lcom/naef/jnlua/JavaModule;->access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    :goto_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    .line 203
    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v4, 0x2

    .line 205
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    .line 200
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 192
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_2
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v1

    :catch_0
    move-exception p1

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
