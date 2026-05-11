.class public Lcom/naef/jnlua/DefaultJavaReflector;
.super Ljava/lang/Object;
.source "DefaultJavaReflector.java"

# interfaces
.implements Lcom/naef/jnlua/JavaReflector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableConstructor;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;,
        Lcom/naef/jnlua/DefaultJavaReflector$Invocable;,
        Lcom/naef/jnlua/DefaultJavaReflector$PropertyAccessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$Accessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$ToString;,
        Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;,
        Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;,
        Lcom/naef/jnlua/DefaultJavaReflector$LessThan;,
        Lcom/naef/jnlua/DefaultJavaReflector$Equal;,
        Lcom/naef/jnlua/DefaultJavaReflector$Length;,
        Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;,
        Lcom/naef/jnlua/DefaultJavaReflector$Index;
    }
.end annotation


# static fields
.field private static final EMPTY_ARGUMENTS:[Ljava/lang/Object;

.field private static final INSTANCE:Lcom/naef/jnlua/DefaultJavaReflector;

.field private static final JAVA_FUNCTION_TYPE:Ljava/lang/Object;


# instance fields
.field private accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private accessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private equal:Lcom/naef/jnlua/JavaFunction;

.field private index:Lcom/naef/jnlua/JavaFunction;

.field private invocableDispatchLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private invocableDispatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;"
        }
    .end annotation
.end field

.field private javaFields:Lcom/naef/jnlua/JavaFunction;

.field private javaMethods:Lcom/naef/jnlua/JavaFunction;

.field private javaProperties:Lcom/naef/jnlua/JavaFunction;

.field private length:Lcom/naef/jnlua/JavaFunction;

.field private lessThan:Lcom/naef/jnlua/JavaFunction;

.field private lessThanOrEqual:Lcom/naef/jnlua/JavaFunction;

.field private newIndex:Lcom/naef/jnlua/JavaFunction;

.field private toString:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultJavaReflector;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->INSTANCE:Lcom/naef/jnlua/DefaultJavaReflector;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->JAVA_FUNCTION_TYPE:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->EMPTY_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatches:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatchLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 50
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$Index;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Index;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->index:Lcom/naef/jnlua/JavaFunction;

    .line 51
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->newIndex:Lcom/naef/jnlua/JavaFunction;

    .line 52
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$Equal;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Equal;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->equal:Lcom/naef/jnlua/JavaFunction;

    .line 53
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$Length;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Length;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->length:Lcom/naef/jnlua/JavaFunction;

    .line 54
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$LessThan;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$LessThan;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThan:Lcom/naef/jnlua/JavaFunction;

    .line 55
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThanOrEqual:Lcom/naef/jnlua/JavaFunction;

    .line 56
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$ToString;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$ToString;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->toString:Lcom/naef/jnlua/JavaFunction;

    .line 57
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    const-class v1, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaFields:Lcom/naef/jnlua/JavaFunction;

    .line 58
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    const-class v1, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaMethods:Lcom/naef/jnlua/JavaFunction;

    .line 60
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    const-class v1, Lcom/naef/jnlua/DefaultJavaReflector$PropertyAccessor;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaProperties:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method static synthetic access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatchLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatches:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    .line 39
    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->JAVA_FUNCTION_TYPE:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->getObjectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->getObjectAccessors(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private createClassAccessors(Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 149
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 150
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;

    aget-object v6, v1, v3

    invoke-direct {v5, p0, v6}, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    .line 156
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 158
    aget-object v5, v3, v4

    .line 159
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 165
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 166
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 166
    invoke-direct {p0, p1, v6, v5}, Lcom/naef/jnlua/DefaultJavaReflector;->getInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_3

    .line 178
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 181
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 183
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-eqz v8, :cond_4

    .line 185
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    .line 186
    invoke-interface {v8}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    .line 185
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 190
    :cond_4
    new-instance v8, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;

    invoke-direct {v8, v5}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 192
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;

    .line 195
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v5, p0, p1, v3}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 194
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 199
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    :goto_4
    array-length v4, v1

    if-ge v2, v4, :cond_8

    .line 204
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    .line 204
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    .line 208
    :cond_7
    new-instance v4, Lcom/naef/jnlua/DefaultJavaReflector$InvocableConstructor;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 209
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 211
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 212
    new-instance v1, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;

    invoke-direct {v1, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 215
    new-instance v1, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;

    invoke-direct {v1, p0, p1, v3}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;Ljava/util/Collection;)V

    const-string p1, "new"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v0
.end method

.method public static getInstance()Lcom/naef/jnlua/DefaultJavaReflector;
    .locals 1

    .line 70
    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->INSTANCE:Lcom/naef/jnlua/DefaultJavaReflector;

    return-object v0
.end method

.method private getInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 287
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 293
    :cond_1
    :try_start_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 300
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2, p3}, Lcom/naef/jnlua/DefaultJavaReflector;->getInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private getObjectAccessors(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->getObjectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 127
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->createClassAccessors(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 123
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private getObjectClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 320
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 1

    .line 83
    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector$1;->$SwitchMap$com$naef$jnlua$JavaReflector$Metamethod:[I

    invoke-virtual {p1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :pswitch_0
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaProperties:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 101
    :pswitch_1
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaMethods:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 99
    :pswitch_2
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaFields:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 97
    :pswitch_3
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->toString:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 95
    :pswitch_4
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThanOrEqual:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 93
    :pswitch_5
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThan:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 91
    :pswitch_6
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->length:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 89
    :pswitch_7
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->equal:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 87
    :pswitch_8
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->newIndex:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 85
    :pswitch_9
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->index:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
