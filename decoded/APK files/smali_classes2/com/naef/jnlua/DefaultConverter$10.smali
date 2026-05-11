.class final Lcom/naef/jnlua/DefaultConverter$10;
.super Ljava/lang/Object;
.source "DefaultConverter.java"

# interfaces
.implements Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/naef/jnlua/DefaultConverter$LuaValueConverter<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Character;
    .locals 0

    .line 177
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$10;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
