.class Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;
.super Ljava/lang/Object;
.source "DefaultJavaReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LuaCallSignature"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private hashCode:I

.field private invocableName:Ljava/lang/String;

.field private types:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1496
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    .line 1497
    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    .line 1498
    iput-object p3, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    .line 1499
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    .line 1500
    iget p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    const v0, 0x1003f

    mul-int p1, p1, v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    const/4 p1, 0x0

    .line 1501
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 1502
    iget p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    mul-int p2, p2, v0

    aget-object v1, p3, p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1516
    :cond_0
    instance-of v1, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1519
    :cond_1
    check-cast p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    .line 1520
    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    iget-object v3, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    iget-object v3, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    .line 1521
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    array-length v1, v1

    iget-object v3, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    array-length v3, v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1525
    :goto_0
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 1526
    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1508
    iget v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    .line 1536
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
