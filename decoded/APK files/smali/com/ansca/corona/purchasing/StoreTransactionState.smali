.class public Lcom/ansca/corona/purchasing/StoreTransactionState;
.super Ljava/lang/Object;
.source "StoreTransactionState.java"


# static fields
.field public static final CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final PURCHASED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final PURCHASING:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final REFUNDED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final RESTORED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;


# instance fields
.field private fStateId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 38
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->PURCHASING:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 41
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->PURCHASED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 44
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 47
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->RESTORED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 50
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 53
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->REFUNDED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionState;->fStateId:I

    return-void
.end method

.method public static fromValue(I)Lcom/ansca/corona/purchasing/StoreTransactionState;
    .locals 6

    .line 72
    const-class v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 73
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 75
    invoke-virtual {v4}, Lcom/ansca/corona/purchasing/StoreTransactionState;->toValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :catch_0
    :cond_1
    sget-object p0, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    return-object p0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionState;->fStateId:I

    return v0
.end method
