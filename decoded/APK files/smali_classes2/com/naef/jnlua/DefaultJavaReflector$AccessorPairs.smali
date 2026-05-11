.class Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;
.super Ljava/lang/Object;
.source "DefaultJavaReflector.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessorPairs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;
    }
.end annotation


# instance fields
.field private accessorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;->accessorClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$900(Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;)Ljava/lang/Class;
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;->accessorClass:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 522
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 523
    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v2, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 526
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v3, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$800(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 528
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 529
    new-instance v4, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v4, p0, v3, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;-><init>(Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;Ljava/util/Iterator;Z)V

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 p1, 0x3

    return p1
.end method
