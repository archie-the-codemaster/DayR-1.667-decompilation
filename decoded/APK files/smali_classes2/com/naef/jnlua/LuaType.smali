.class public final enum Lcom/naef/jnlua/LuaType;
.super Ljava/lang/Enum;
.source "LuaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/naef/jnlua/LuaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naef/jnlua/LuaType;

.field public static final enum BOOLEAN:Lcom/naef/jnlua/LuaType;

.field public static final enum FUNCTION:Lcom/naef/jnlua/LuaType;

.field public static final enum LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

.field public static final enum NIL:Lcom/naef/jnlua/LuaType;

.field public static final enum NUMBER:Lcom/naef/jnlua/LuaType;

.field public static final enum STRING:Lcom/naef/jnlua/LuaType;

.field public static final enum TABLE:Lcom/naef/jnlua/LuaType;

.field public static final enum THREAD:Lcom/naef/jnlua/LuaType;

.field public static final enum USERDATA:Lcom/naef/jnlua/LuaType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v1, 0x0

    const-string v2, "NIL"

    invoke-direct {v0, v2, v1}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->NIL:Lcom/naef/jnlua/LuaType;

    .line 21
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v2, 0x1

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v2}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    .line 26
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v3, 0x2

    const-string v4, "LIGHTUSERDATA"

    invoke-direct {v0, v4, v3}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

    .line 31
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v4, 0x3

    const-string v5, "NUMBER"

    invoke-direct {v0, v5, v4}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    .line 36
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v5, 0x4

    const-string v6, "STRING"

    invoke-direct {v0, v6, v5}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    .line 41
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v6, 0x5

    const-string v7, "TABLE"

    invoke-direct {v0, v7, v6}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    .line 46
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v7, 0x6

    const-string v8, "FUNCTION"

    invoke-direct {v0, v8, v7}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    .line 51
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/4 v8, 0x7

    const-string v9, "USERDATA"

    invoke-direct {v0, v9, v8}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    .line 56
    new-instance v0, Lcom/naef/jnlua/LuaType;

    const/16 v9, 0x8

    const-string v10, "THREAD"

    invoke-direct {v0, v10, v9}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->THREAD:Lcom/naef/jnlua/LuaType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/naef/jnlua/LuaType;

    .line 11
    sget-object v10, Lcom/naef/jnlua/LuaType;->NIL:Lcom/naef/jnlua/LuaType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/LuaType;->LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/naef/jnlua/LuaType;->THREAD:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/naef/jnlua/LuaType;->$VALUES:[Lcom/naef/jnlua/LuaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naef/jnlua/LuaType;
    .locals 1

    .line 11
    const-class v0, Lcom/naef/jnlua/LuaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/naef/jnlua/LuaType;

    return-object p0
.end method

.method public static values()[Lcom/naef/jnlua/LuaType;
    .locals 1

    .line 11
    sget-object v0, Lcom/naef/jnlua/LuaType;->$VALUES:[Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0}, [Lcom/naef/jnlua/LuaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/LuaType;

    return-object v0
.end method


# virtual methods
.method public displayText()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
