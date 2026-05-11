.class Lcom/naef/jnlua/JavaModule$Pairs$MapNext;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$Pairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapNext"
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 p1, 0x1

    return p1
.end method
