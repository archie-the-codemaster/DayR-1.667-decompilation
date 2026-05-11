.class public Lplugin/google/iap/v3/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/google/iap/v3/LuaLoader$RestoreWrapper;,
        Lplugin/google/iap/v3/LuaLoader$FinishTransactionWrapper;,
        Lplugin/google/iap/v3/LuaLoader$ConsumePurchaseWrapper;,
        Lplugin/google/iap/v3/LuaLoader$PurchaseSubscriptionWrapper;,
        Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;,
        Lplugin/google/iap/v3/LuaLoader$LoadProductsWrapper;,
        Lplugin/google/iap/v3/LuaLoader$InitWrapper;
    }
.end annotation


# static fields
.field private static sHelper:Lplugin/google/iap/v3/util/IabHelper;


# instance fields
.field private fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fHelper:Lplugin/google/iap/v3/util/IabHelper;

.field private fLibRef:I

.field private fListener:I

.field private fSetupMessage:Ljava/lang/String;

.field private fSetupSuccessful:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lplugin/google/iap/v3/LuaLoader;)Lplugin/google/iap/v3/util/IabHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lplugin/google/iap/v3/LuaLoader;)I
    .locals 0

    .line 37
    iget p0, p0, Lplugin/google/iap/v3/LuaLoader;->fListener:I

    return p0
.end method

.method static synthetic access$1200(Lplugin/google/iap/v3/LuaLoader;)I
    .locals 0

    .line 37
    iget p0, p0, Lplugin/google/iap/v3/LuaLoader;->fLibRef:I

    return p0
.end method

.method static synthetic access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 0

    .line 37
    iget-object p0, p0, Lplugin/google/iap/v3/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object p0
.end method

.method static synthetic access$1400(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader;->init(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader;->loadProducts(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader;->purchase(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader;->purchaseSubscription(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader;->consumePurchase(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lplugin/google/iap/v3/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lplugin/google/iap/v3/LuaLoader;->restore(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lplugin/google/iap/v3/LuaLoader;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lplugin/google/iap/v3/LuaLoader;->fSetupSuccessful:Z

    return p0
.end method

.method static synthetic access$702(Lplugin/google/iap/v3/LuaLoader;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lplugin/google/iap/v3/LuaLoader;->fSetupSuccessful:Z

    return p1
.end method

.method static synthetic access$800(Lplugin/google/iap/v3/LuaLoader;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lplugin/google/iap/v3/LuaLoader;->fSetupMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lplugin/google/iap/v3/LuaLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fSetupMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lplugin/google/iap/v3/util/IabHelper;)Lplugin/google/iap/v3/util/IabHelper;
    .locals 0

    .line 37
    sput-object p0, Lplugin/google/iap/v3/LuaLoader;->sHelper:Lplugin/google/iap/v3/util/IabHelper;

    return-object p0
.end method

.method private consumePurchase(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    .line 344
    invoke-direct {p0}, Lplugin/google/iap/v3/LuaLoader;->initSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Corona"

    const-string v0, "Please call init before trying to consume products."

    .line 345
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 350
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    .line 351
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    sget-object v4, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const-string v5, ""

    if-ne v3, v4, :cond_2

    .line 352
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v3, :cond_4

    .line 355
    invoke-virtual {p1, v2, v4}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    const/4 v6, -0x1

    .line 356
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v7

    sget-object v8, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v7, v8, :cond_1

    .line 357
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_1
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    sget-object v4, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v3, v4, :cond_3

    .line 366
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_4
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v3, Lplugin/google/iap/v3/LuaLoader$6;

    invoke-direct {v3, p0, v0}, Lplugin/google/iap/v3/LuaLoader$6;-><init>(Lplugin/google/iap/v3/LuaLoader;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, v0, v3}, Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    return v1
.end method

.method private init(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "require"

    .line 119
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    const-string v0, "config"

    .line 120
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->call(II)V

    const-string v2, "application"

    .line 124
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const-string v4, ""

    if-ne v2, v3, :cond_3

    const-string v2, "license"

    .line 127
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 128
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_2

    const-string v2, "google"

    .line 130
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 131
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_1

    const-string v2, "key"

    .line 133
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_0

    .line 135
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 137
    :cond_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 139
    :cond_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 141
    :cond_2
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 143
    :cond_3
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 145
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    .line 149
    :goto_0
    iput v1, p0, Lplugin/google/iap/v3/LuaLoader;->fListener:I

    const-string v1, "storeTransaction"

    .line 150
    invoke-static {p1, v2, v1}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    invoke-static {p1, v2}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    iput p1, p0, Lplugin/google/iap/v3/LuaLoader;->fListener:I

    .line 154
    :cond_5
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 155
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_6

    if-eqz p1, :cond_6

    .line 156
    new-instance v0, Lplugin/google/iap/v3/util/IabHelper;

    invoke-direct {v0, p1, v4}, Lplugin/google/iap/v3/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    .line 157
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v0, Lplugin/google/iap/v3/LuaLoader$1;

    invoke-direct {v0, p0}, Lplugin/google/iap/v3/LuaLoader$1;-><init>(Lplugin/google/iap/v3/LuaLoader;)V

    invoke-virtual {p1, v0}, Lplugin/google/iap/v3/util/IabHelper;->startSetup(Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;)V

    return v2

    .line 181
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "Corona"

    if-ge v1, v0, :cond_7

    const-string v0, "No license key was supplied to config.lua."

    .line 182
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez p1, :cond_8

    const-string p1, "Context was null."

    .line 185
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2
.end method

.method private initSuccessful()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lplugin/google/iap/v3/LuaLoader;->fSetupSuccessful:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadProducts(Lcom/naef/jnlua/LuaState;)I
    .locals 12

    .line 194
    invoke-direct {p0}, Lplugin/google/iap/v3/LuaLoader;->initSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Corona"

    const-string v0, "Please call init before trying to load products."

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 202
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v3

    .line 203
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x1

    :goto_0
    const-string v6, ""

    const/4 v7, -0x1

    if-gt v5, v3, :cond_2

    .line 206
    invoke-virtual {p1, v2, v5}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 207
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    sget-object v9, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v8, v9, :cond_1

    .line 208
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_1
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const-string v5, "productList"

    .line 217
    invoke-static {p1, v0, v5}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 218
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v3

    .line 219
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v9, 0x1

    :goto_2
    if-gt v9, v3, :cond_4

    .line 221
    invoke-virtual {p1, v0, v9}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 222
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v10

    sget-object v11, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v10, v11, :cond_3

    .line 223
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 225
    :cond_3
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_3
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    move-object v3, v8

    .line 234
    :cond_5
    invoke-static {p1, v0, v5}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v7

    .line 236
    :cond_6
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v0, Lplugin/google/iap/v3/LuaLoader$2;

    invoke-direct {v0, p0, v4, v3, v7}, Lplugin/google/iap/v3/LuaLoader$2;-><init>(Lplugin/google/iap/v3/LuaLoader;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    invoke-virtual {p1, v2, v4, v3, v0}, Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    return v1
.end method

.method private purchase(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    .line 309
    invoke-direct {p0}, Lplugin/google/iap/v3/LuaLoader;->initSuccessful()Z

    move-result v0

    const-string v1, "Corona"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Please call init before trying to purchase products."

    .line 310
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 314
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "The Corona Activity was null."

    .line 316
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 320
    :cond_1
    new-instance v1, Lplugin/google/iap/v3/LuaLoader$5;

    invoke-direct {v1, p0}, Lplugin/google/iap/v3/LuaLoader$5;-><init>(Lplugin/google/iap/v3/LuaLoader;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v1

    const/4 v3, 0x1

    .line 333
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v4, v5, :cond_2

    .line 334
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    .line 336
    :goto_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 338
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v3, Lplugin/google/iap/v3/PurchaseFinishedListener;

    iget-object v5, p0, Lplugin/google/iap/v3/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    iget v6, p0, Lplugin/google/iap/v3/LuaLoader;->fListener:I

    invoke-direct {v3, v5, v6}, Lplugin/google/iap/v3/PurchaseFinishedListener;-><init>(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;I)V

    invoke-virtual {p1, v0, v4, v1, v3}, Lplugin/google/iap/v3/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;)V

    return v2
.end method

.method private purchaseSubscription(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    .line 274
    invoke-direct {p0}, Lplugin/google/iap/v3/LuaLoader;->initSuccessful()Z

    move-result v0

    const-string v1, "Corona"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Please call init before trying to purchase products."

    .line 275
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 279
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "The Corona Activity was null."

    .line 281
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 285
    :cond_1
    new-instance v1, Lplugin/google/iap/v3/LuaLoader$4;

    invoke-direct {v1, p0}, Lplugin/google/iap/v3/LuaLoader$4;-><init>(Lplugin/google/iap/v3/LuaLoader;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v1

    const/4 v3, 0x1

    .line 298
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v4, v5, :cond_2

    .line 299
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    .line 301
    :goto_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 303
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v3, Lplugin/google/iap/v3/PurchaseFinishedListener;

    iget-object v5, p0, Lplugin/google/iap/v3/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    iget v6, p0, Lplugin/google/iap/v3/LuaLoader;->fListener:I

    invoke-direct {v3, v5, v6}, Lplugin/google/iap/v3/PurchaseFinishedListener;-><init>(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;I)V

    invoke-virtual {p1, v0, v4, v1, v3}, Lplugin/google/iap/v3/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;)V

    return v2
.end method

.method public static queryInventoryAsync(Ljava/util/HashSet;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 40
    sget-object v0, Lplugin/google/iap/v3/LuaLoader;->sHelper:Lplugin/google/iap/v3/util/IabHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, p0, v2, p1}, Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method private restore(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    .line 249
    invoke-direct {p0}, Lplugin/google/iap/v3/LuaLoader;->initSuccessful()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Corona"

    const-string v1, "Please call init before trying to restore products."

    .line 250
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 254
    :cond_0
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v1, Lplugin/google/iap/v3/LuaLoader$3;

    invoke-direct {v1, p0}, Lplugin/google/iap/v3/LuaLoader$3;-><init>(Lplugin/google/iap/v3/LuaLoader;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    return v0
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    .line 76
    new-instance v0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/google/iap/v3/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lplugin/google/iap/v3/LuaLoader;->fSetupSuccessful:Z

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 81
    new-instance v2, Lplugin/google/iap/v3/LuaLoader$InitWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$InitWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    aput-object v2, v1, v0

    new-instance v2, Lplugin/google/iap/v3/LuaLoader$LoadProductsWrapper;

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$LoadProductsWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$PurchaseWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lplugin/google/iap/v3/LuaLoader$ConsumePurchaseWrapper;

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$ConsumePurchaseWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lplugin/google/iap/v3/LuaLoader$PurchaseSubscriptionWrapper;

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$PurchaseSubscriptionWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lplugin/google/iap/v3/LuaLoader$FinishTransactionWrapper;

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$FinishTransactionWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lplugin/google/iap/v3/LuaLoader$RestoreWrapper;

    invoke-direct {v2, p0, v3}, Lplugin/google/iap/v3/LuaLoader$RestoreWrapper;-><init>(Lplugin/google/iap/v3/LuaLoader;Lplugin/google/iap/v3/LuaLoader$1;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 91
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    const/4 v1, -0x1

    .line 94
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    const/16 v1, -0x2710

    .line 95
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->ref(I)I

    move-result v1

    iput v1, p0, Lplugin/google/iap/v3/LuaLoader;->fLibRef:I

    .line 97
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 v1, -0x2

    const-string v2, "canLoadProducts"

    .line 98
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 100
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v2, "canMakePurchases"

    .line 101
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 103
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isActive"

    .line 104
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 106
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "canPurchaseSubscriptions"

    .line 107
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "target"

    .line 110
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return v4
.end method
