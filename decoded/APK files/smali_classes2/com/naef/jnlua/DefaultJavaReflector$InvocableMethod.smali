.class Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;
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
    name = "InvocableMethod"
.end annotation


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    .line 1241
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->parameterTypes:[Ljava/lang/Class;

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

    .line 1251
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public getParameterType(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    .line 1287
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    .line 1288
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->parameterTypes:[Ljava/lang/Class;

    aget-object p1, v0, p1

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

    .line 1281
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->parameterTypes:[Ljava/lang/Class;

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

    .line 1266
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getWhat()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isRawReturn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
