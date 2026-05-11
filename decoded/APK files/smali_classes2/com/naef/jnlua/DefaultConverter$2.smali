.class final Lcom/naef/jnlua/DefaultConverter$2;
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
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Byte;
    .locals 0

    .line 114
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$2;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
