.class public Lcom/naef/jnlua/JavaModule;
.super Ljava/lang/Object;
.source "JavaModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$Properties;,
        Lcom/naef/jnlua/JavaModule$Methods;,
        Lcom/naef/jnlua/JavaModule$Fields;,
        Lcom/naef/jnlua/JavaModule$Elements;,
        Lcom/naef/jnlua/JavaModule$ToTable;,
        Lcom/naef/jnlua/JavaModule$IPairs;,
        Lcom/naef/jnlua/JavaModule$Pairs;,
        Lcom/naef/jnlua/JavaModule$Proxy;,
        Lcom/naef/jnlua/JavaModule$Cast;,
        Lcom/naef/jnlua/JavaModule$InstanceOf;,
        Lcom/naef/jnlua/JavaModule$New;,
        Lcom/naef/jnlua/JavaModule$Require;
    }
.end annotation


# static fields
.field private static final EMPTY_MODULE:[Lcom/naef/jnlua/NamedJavaFunction;

.field private static final INSTANCE:Lcom/naef/jnlua/JavaModule;

.field private static final PRIMITIVE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final functions:[Lcom/naef/jnlua/NamedJavaFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/naef/jnlua/JavaModule;

    invoke-direct {v0}, Lcom/naef/jnlua/JavaModule;-><init>()V

    sput-object v0, Lcom/naef/jnlua/JavaModule;->INSTANCE:Lcom/naef/jnlua/JavaModule;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    .line 26
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v2, "char"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "double"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "float"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "short"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "void"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 36
    sput-object v0, Lcom/naef/jnlua/JavaModule;->EMPTY_MODULE:[Lcom/naef/jnlua/NamedJavaFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 39
    new-instance v1, Lcom/naef/jnlua/JavaModule$Require;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Require;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$New;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$New;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$InstanceOf;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$InstanceOf;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Cast;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Cast;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Proxy;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Proxy;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Pairs;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Pairs;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$IPairs;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$IPairs;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$ToTable;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$ToTable;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Elements;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Elements;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Fields;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Fields;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Methods;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Methods;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/naef/jnlua/JavaModule$Properties;

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Properties;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule;->functions:[Lcom/naef/jnlua/NamedJavaFunction;

    return-void
.end method

.method static synthetic access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/naef/jnlua/JavaModule;->loadType(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()[Lcom/naef/jnlua/NamedJavaFunction;
    .locals 1

    .line 21
    sget-object v0, Lcom/naef/jnlua/JavaModule;->EMPTY_MODULE:[Lcom/naef/jnlua/NamedJavaFunction;

    return-object v0
.end method

.method public static getInstance()Lcom/naef/jnlua/JavaModule;
    .locals 1

    .line 51
    sget-object v0, Lcom/naef/jnlua/JavaModule;->INSTANCE:Lcom/naef/jnlua/JavaModule;

    return-object v0
.end method

.method private static loadType(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public open(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 72
    monitor-enter p1

    :try_start_0
    const-string v0, "java"

    .line 73
    iget-object v1, p0, Lcom/naef/jnlua/JavaModule;->functions:[Lcom/naef/jnlua/NamedJavaFunction;

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 75
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toTable(Ljava/util/List;)Lcom/naef/jnlua/TypedJavaObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/naef/jnlua/TypedJavaObject;"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lcom/naef/jnlua/JavaModule$ToTable;->toTable(Ljava/util/List;)Lcom/naef/jnlua/TypedJavaObject;

    move-result-object p1

    return-object p1
.end method

.method public toTable(Ljava/util/Map;)Lcom/naef/jnlua/TypedJavaObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/naef/jnlua/TypedJavaObject;"
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/naef/jnlua/JavaModule$ToTable;->toTable(Ljava/util/Map;)Lcom/naef/jnlua/TypedJavaObject;

    move-result-object p1

    return-object p1
.end method
