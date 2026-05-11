.class Lcom/naef/jnlua/util/AbstractTableMap$Entry;
.super Ljava/lang/Object;
.source "AbstractTableMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/util/AbstractTableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/util/AbstractTableMap;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Lcom/naef/jnlua/LuaState;
    .locals 0

    .line 332
    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Ljava/lang/Object;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method private getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 363
    instance-of v0, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    check-cast p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    .line 368
    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-direct {p1}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 374
    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x1003f

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
