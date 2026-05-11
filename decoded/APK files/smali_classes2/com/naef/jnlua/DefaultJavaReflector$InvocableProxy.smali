.class Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;
.super Ljava/lang/Object;
.source "DefaultJavaReflector.java"

# interfaces
.implements Lcom/naef/jnlua/DefaultJavaReflector$Invocable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvocableProxy"
.end annotation


# static fields
.field private static final PARAMETER_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private interfaze:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 1401
    const-class v1, Lcom/naef/jnlua/LuaValueProxy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->PARAMETER_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1410
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "new"

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameterType(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1455
    sget-object p1, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->PARAMETER_TYPES:[Ljava/lang/Class;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1450
    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->PARAMETER_TYPES:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    return-object v0
.end method

.method public getWhat()Ljava/lang/String;
    .locals 1

    const-string v0, "proxy"

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1467
    aget-object p1, p2, p1

    check-cast p1, Lcom/naef/jnlua/LuaValueProxy;

    .line 1468
    invoke-interface {p1}, Lcom/naef/jnlua/LuaValueProxy;->pushValue()V

    .line 1469
    invoke-interface {p1}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p2

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v0}, Lcom/naef/jnlua/LuaState;->getProxy(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 1470
    invoke-interface {p1}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-object p2
.end method

.method public isRawReturn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
