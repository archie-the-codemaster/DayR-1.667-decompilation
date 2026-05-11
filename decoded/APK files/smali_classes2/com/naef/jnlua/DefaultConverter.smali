.class public Lcom/naef/jnlua/DefaultConverter;
.super Ljava/lang/Object;
.source "DefaultConverter.java"

# interfaces
.implements Lcom/naef/jnlua/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;,
        Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;
    }
.end annotation


# static fields
.field private static final BOOLEAN_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FUNCTION_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lcom/naef/jnlua/DefaultConverter;

.field private static final JAVA_OBJECT_CONVERTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final LUA_VALUE_CONVERTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/naef/jnlua/DefaultConverter$LuaValueConverter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final NUMBER_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/naef/jnlua/DefaultConverter;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->INSTANCE:Lcom/naef/jnlua/DefaultConverter;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    .line 68
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    .line 93
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Lcom/naef/jnlua/JavaFunction;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    .line 102
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$1;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$1;-><init>()V

    .line 108
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$2;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$2;-><init>()V

    .line 117
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$3;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$3;-><init>()V

    .line 125
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$4;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$4;-><init>()V

    .line 133
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$5;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$5;-><init>()V

    .line 141
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$6;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$6;-><init>()V

    .line 149
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$7;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$7;-><init>()V

    .line 157
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$8;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$8;-><init>()V

    .line 166
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigInteger;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$9;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$9;-><init>()V

    .line 173
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigDecimal;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$10;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$10;-><init>()V

    .line 180
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$11;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$11;-><init>()V

    .line 188
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    .line 196
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$12;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$12;-><init>()V

    .line 202
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$13;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$13;-><init>()V

    .line 210
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigInteger;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigDecimal;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$14;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$14;-><init>()V

    .line 230
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Lcom/naef/jnlua/DefaultConverter$15;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$15;-><init>()V

    .line 238
    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/naef/jnlua/DefaultConverter;
    .locals 1

    .line 248
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->INSTANCE:Lcom/naef/jnlua/DefaultConverter;

    return-object v0
.end method


# virtual methods
.method public convertJavaObject(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    return-void

    .line 500
    :cond_0
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    .line 501
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;

    if-eqz v0, :cond_1

    .line 503
    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;->convert(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    return-void

    .line 506
    :cond_1
    instance-of v0, p2, Lcom/naef/jnlua/JavaFunction;

    if-eqz v0, :cond_2

    .line 507
    check-cast p2, Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    return-void

    .line 510
    :cond_2
    instance-of v0, p2, Lcom/naef/jnlua/LuaValueProxy;

    if-eqz v0, :cond_4

    .line 511
    check-cast p2, Lcom/naef/jnlua/LuaValueProxy;

    .line 512
    invoke-interface {p2}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 516
    invoke-interface {p2}, Lcom/naef/jnlua/LuaValueProxy;->pushValue()V

    return-void

    .line 513
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Lua value proxy is from a different Lua state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 521
    :cond_4
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    return-void
.end method

.method public convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 359
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    const-string v3, "cannot convert %s to %s"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v1, :cond_d

    .line 366
    const-class v1, Lcom/naef/jnlua/LuaValueProxy;

    if-ne p3, v1, :cond_0

    .line 367
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    sget-object v1, Lcom/naef/jnlua/DefaultConverter$18;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 462
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 464
    instance-of p1, v0, Lcom/naef/jnlua/TypedJavaObject;

    if-eqz p1, :cond_2

    .line 465
    check-cast v0, Lcom/naef/jnlua/TypedJavaObject;

    .line 466
    invoke-interface {v0}, Lcom/naef/jnlua/TypedJavaObject;->isStrong()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 467
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 472
    :cond_1
    invoke-interface {v0}, Lcom/naef/jnlua/TypedJavaObject;->getObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 454
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->isJavaFunction(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 455
    const-class v0, Lcom/naef/jnlua/JavaFunction;

    if-eq p3, v0, :cond_3

    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_b

    .line 457
    :cond_3
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaFunction(I)Lcom/naef/jnlua/JavaFunction;

    move-result-object p1

    return-object p1

    .line 403
    :pswitch_2
    const-class v0, Ljava/util/Map;

    if-eq p3, v0, :cond_7

    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_4

    goto :goto_1

    .line 422
    :cond_4
    const-class v0, Ljava/util/List;

    if-ne p3, v0, :cond_5

    .line 423
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object p1

    .line 424
    new-instance p2, Lcom/naef/jnlua/DefaultConverter$17;

    invoke-direct {p2, p0, p1}, Lcom/naef/jnlua/DefaultConverter$17;-><init>(Lcom/naef/jnlua/DefaultConverter;Lcom/naef/jnlua/LuaValueProxy;)V

    return-object p2

    .line 436
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 437
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v0

    .line 438
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 439
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    if-ge v4, v0, :cond_6

    add-int/lit8 v2, v4, 0x1

    .line 442
    invoke-virtual {p1, p2, v2}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    const/4 v3, -0x1

    .line 444
    :try_start_0
    invoke-virtual {p0, p1, v3, v1}, Lcom/naef/jnlua/DefaultConverter;->convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v4, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    move v4, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw p2

    :cond_6
    return-object p3

    .line 404
    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object p1

    .line 405
    new-instance p2, Lcom/naef/jnlua/DefaultConverter$16;

    invoke-direct {p2, p0, p1}, Lcom/naef/jnlua/DefaultConverter$16;-><init>(Lcom/naef/jnlua/DefaultConverter;Lcom/naef/jnlua/LuaValueProxy;)V

    return-object p2

    .line 394
    :pswitch_3
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;

    if-eqz v0, :cond_8

    .line 396
    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 398
    :cond_8
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_b

    .line 399
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 385
    :pswitch_4
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;

    if-eqz v0, :cond_9

    .line 387
    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 389
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_b

    .line 390
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 376
    :pswitch_5
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;

    if-eqz v0, :cond_a

    .line 378
    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 380
    :cond_a
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_b

    .line 381
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/4 p1, 0x0

    return-object p1

    .line 481
    :cond_b
    :goto_2
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_c

    .line 482
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object p1

    return-object p1

    .line 486
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    new-array v1, v2, [Ljava/lang/Object;

    .line 487
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 486
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    new-array v1, v2, [Ljava/lang/Object;

    .line 361
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 362
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 360
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "undefined index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 262
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    return v1

    .line 268
    :cond_0
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_1

    return v1

    .line 273
    :cond_1
    const-class v2, Lcom/naef/jnlua/LuaValueProxy;

    if-ne p3, v2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 278
    :cond_2
    sget-object v2, Lcom/naef/jnlua/DefaultConverter$18;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 317
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 320
    instance-of p2, p1, Lcom/naef/jnlua/TypedJavaObject;

    if-eqz p2, :cond_4

    .line 321
    check-cast p1, Lcom/naef/jnlua/TypedJavaObject;

    .line 322
    invoke-interface {p1}, Lcom/naef/jnlua/TypedJavaObject;->isStrong()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 323
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    .line 328
    :cond_3
    invoke-interface {p1}, Lcom/naef/jnlua/TypedJavaObject;->getType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 332
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    .line 309
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->isJavaFunction(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 310
    sget-object p1, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 312
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 300
    :pswitch_2
    const-class p1, Ljava/util/Map;

    if-eq p3, p1, :cond_6

    const-class p1, Ljava/util/List;

    if-eq p3, p1, :cond_6

    .line 301
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 304
    :cond_5
    const-class p1, Ljava/lang/Object;

    if-ne p3, p1, :cond_7

    const/4 p1, 0x2

    return p1

    :cond_6
    :goto_1
    return v2

    .line 294
    :pswitch_3
    sget-object p1, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 296
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 288
    :pswitch_4
    sget-object p1, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 290
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 282
    :pswitch_5
    sget-object p1, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 284
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :pswitch_6
    return v2

    .line 340
    :cond_7
    :goto_2
    const-class p1, Ljava/lang/Object;

    if-ne p3, p1, :cond_8

    const p1, 0x7ffffffe

    return p1

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
