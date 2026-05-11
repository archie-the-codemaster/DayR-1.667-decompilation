.class public Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
.super Ljava/lang/Object;
.source "StoreTransactionErrorType.java"


# static fields
.field public static final CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final NONE:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final PAYMENT_CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final PAYMENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final PAYMENT_NOT_ALLOWED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;


# instance fields
.field private fNumericId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->NONE:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 39
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 42
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 45
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 48
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 51
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_NOT_ALLOWED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->fNumericId:I

    return-void
.end method

.method public static fromValue(I)Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .locals 6

    .line 71
    const-class v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 72
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 74
    invoke-virtual {v4}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->toValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :catch_0
    :cond_1
    sget-object p0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    return-object p0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->fNumericId:I

    return v0
.end method
