.class public final enum Lcom/naef/jnlua/JavaReflector$Metamethod;
.super Ljava/lang/Enum;
.source "JavaReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Metamethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/naef/jnlua/JavaReflector$Metamethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum ADD:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum CALL:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum CONCAT:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum DIV:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum EQ:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum INDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum JAVAFIELDS:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum JAVAMETHODS:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum LE:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum LEN:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum LT:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum MOD:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum MUL:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum NEWINDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum POW:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum SUB:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum TOSTRING:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum UNM:Lcom/naef/jnlua/JavaReflector$Metamethod;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v1, 0x0

    const-string v2, "INDEX"

    invoke-direct {v0, v2, v1}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->INDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 46
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v2, 0x1

    const-string v3, "NEWINDEX"

    invoke-direct {v0, v3, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->NEWINDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 51
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v3, 0x2

    const-string v4, "LEN"

    invoke-direct {v0, v4, v3}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->LEN:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 56
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v4, 0x3

    const-string v5, "EQ"

    invoke-direct {v0, v5, v4}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->EQ:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 61
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v5, 0x4

    const-string v6, "LT"

    invoke-direct {v0, v6, v5}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->LT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 66
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v6, 0x5

    const-string v7, "LE"

    invoke-direct {v0, v7, v6}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->LE:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 71
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v7, 0x6

    const-string v8, "UNM"

    invoke-direct {v0, v8, v7}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->UNM:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 76
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/4 v8, 0x7

    const-string v9, "ADD"

    invoke-direct {v0, v9, v8}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->ADD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 81
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v9, 0x8

    const-string v10, "SUB"

    invoke-direct {v0, v10, v9}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->SUB:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 86
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v10, 0x9

    const-string v11, "MUL"

    invoke-direct {v0, v11, v10}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->MUL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 91
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v11, 0xa

    const-string v12, "DIV"

    invoke-direct {v0, v12, v11}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->DIV:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 96
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v12, 0xb

    const-string v13, "MOD"

    invoke-direct {v0, v13, v12}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->MOD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 101
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v13, 0xc

    const-string v14, "POW"

    invoke-direct {v0, v14, v13}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->POW:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 106
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v14, 0xd

    const-string v15, "CONCAT"

    invoke-direct {v0, v15, v14}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->CONCAT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 111
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v15, 0xe

    const-string v14, "CALL"

    invoke-direct {v0, v14, v15}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->CALL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 116
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v14, "TOSTRING"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->TOSTRING:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 121
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v14, "JAVAFIELDS"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAFIELDS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 126
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v14, "JAVAMETHODS"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAMETHODS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 131
    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v14, "JAVAPROPERTIES"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 37
    sget-object v14, Lcom/naef/jnlua/JavaReflector$Metamethod;->INDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v14, v0, v1

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->NEWINDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->LEN:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->EQ:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->LT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->LE:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->UNM:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->ADD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v8

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->SUB:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v9

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->MUL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v10

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->DIV:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v11

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->MOD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v12

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->POW:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v13

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->CONCAT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->CALL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->TOSTRING:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAFIELDS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAMETHODS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->$VALUES:[Lcom/naef/jnlua/JavaReflector$Metamethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naef/jnlua/JavaReflector$Metamethod;
    .locals 1

    .line 37
    const-class v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    return-object p0
.end method

.method public static values()[Lcom/naef/jnlua/JavaReflector$Metamethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->$VALUES:[Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-virtual {v0}, [Lcom/naef/jnlua/JavaReflector$Metamethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/JavaReflector$Metamethod;

    return-object v0
.end method


# virtual methods
.method public getMetamethodName()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/naef/jnlua/JavaReflector$Metamethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
