.class Lcom/naef/jnlua/JavaModule$ToTable$LuaList;
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
    name = "LuaList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;,
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;,
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;
    }
.end annotation


# static fields
.field private static final INDEX:Lcom/naef/jnlua/JavaFunction;

.field private static final LENGTH:Lcom/naef/jnlua/JavaFunction;

.field private static final NEW_INDEX:Lcom/naef/jnlua/JavaFunction;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 648
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->INDEX:Lcom/naef/jnlua/JavaFunction;

    .line 649
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->NEW_INDEX:Lcom/naef/jnlua/JavaFunction;

    .line 650
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->LENGTH:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 1

    .line 674
    sget-object v0, Lcom/naef/jnlua/JavaModule$1;->$SwitchMap$com$naef$jnlua$JavaReflector$Metamethod:[I

    invoke-virtual {p1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 680
    :cond_0
    sget-object p1, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->LENGTH:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 678
    :cond_1
    sget-object p1, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->NEW_INDEX:Lcom/naef/jnlua/JavaFunction;

    return-object p1

    .line 676
    :cond_2
    sget-object p1, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->INDEX:Lcom/naef/jnlua/JavaFunction;

    return-object p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->list:Ljava/util/List;

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

    .line 694
    const-class v0, Ljava/util/List;

    return-object v0
.end method

.method public isStrong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
