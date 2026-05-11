.class public Lplugin/google/iap/v3/util/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:Ljava/lang/String;

.field mPriceAmountMicros:Ljava/lang/String;

.field mPriceCurrencyCode:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "inapp"

    .line 38
    invoke-direct {p0, v0, p1}, Lplugin/google/iap/v3/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lplugin/google/iap/v3/util/SkuDetails;->mItemType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mJson:Ljava/lang/String;

    .line 44
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "productId"

    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mSku:Ljava/lang/String;

    const-string p2, "type"

    .line 46
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mType:Ljava/lang/String;

    const-string p2, "price"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPrice:Ljava/lang/String;

    const-string p2, "title"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mTitle:Ljava/lang/String;

    const-string p2, "description"

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mDescription:Ljava/lang/String;

    const-string p2, "price_currency_code"

    .line 50
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    const-string p2, "price_amount_micros"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPriceAmountMicros:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPriceAmountMicros:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public pushToLua(Lcom/naef/jnlua/LuaState;I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "title"

    .line 74
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "description"

    .line 76
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "localizedPrice"

    .line 78
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mSku:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    .line 80
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "type"

    .line 82
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 83
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPriceAmountMicros:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "priceAmountMicros"

    .line 84
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 85
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "priceCurrencyCode"

    .line 86
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lplugin/google/iap/v3/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "originalJson"

    .line 88
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugin/google/iap/v3/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
