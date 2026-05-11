.class Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/JavaReflector;
.implements Lcom/naef/jnlua/TypedJavaObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$ToTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LuaMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$NewIndex;,
        Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$Index;
    }
.end annotation


# static fields
.field private static final INDEX:Lcom/naef/jnlua/JavaFunction;

.field private static final NEW_INDEX:Lcom/naef/jnlua/JavaFunction;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 547
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$Index;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$Index;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->INDEX:Lcom/naef/jnlua/JavaFunction;

    .line 548
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$NewIndex;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$NewIndex;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->NEW_INDEX:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 1

    .line 572
    sget-object v0, Lcom/naef/jnlua/JavaModule$1;->$SwitchMap$com$naef$jnlua$JavaReflector$Metamethod:[I

    invoke-virtual {p1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 576
    :cond_0
    sget-object p1, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->NEW_INDEX:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 574
    :cond_1
    sget-object p1, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->INDEX:Lcom/naef/jnlua/JavaFunction;

    return-object p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 590
    const-class v0, Ljava/util/Map;

    return-object v0
.end method

.method public isStrong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
