.class public Lplugin/google/iap/v3/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/google/iap/v3/util/Purchase$State;
    }
.end annotation


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lplugin/google/iap/v3/util/Purchase;->mItemType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 48
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "orderId"

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mOrderId:Ljava/lang/String;

    const-string p2, "packageName"

    .line 50
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mPackageName:Ljava/lang/String;

    const-string p2, "productId"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mSku:Ljava/lang/String;

    const-string p2, "purchaseTime"

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseTime:J

    const-string p2, "developerPayload"

    .line 53
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const-string p2, "purchaseToken"

    .line 54
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "token"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lplugin/google/iap/v3/util/Purchase;->mToken:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lplugin/google/iap/v3/util/Purchase;->mSignature:Ljava/lang/String;

    const-string p2, "purchaseState"

    .line 57
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 65
    sget-object p1, Lplugin/google/iap/v3/util/Purchase$State;->Unknown:Lplugin/google/iap/v3/util/Purchase$State;

    iput-object p1, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lplugin/google/iap/v3/util/Purchase$State;->Refunded:Lplugin/google/iap/v3/util/Purchase$State;

    iput-object p1, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

    goto :goto_0

    .line 61
    :cond_1
    sget-object p1, Lplugin/google/iap/v3/util/Purchase$State;->Cancelled:Lplugin/google/iap/v3/util/Purchase$State;

    iput-object p1, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

    goto :goto_0

    .line 59
    :cond_2
    sget-object p1, Lplugin/google/iap/v3/util/Purchase$State;->Purchased:Lplugin/google/iap/v3/util/Purchase$State;

    iput-object p1, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()Lplugin/google/iap/v3/util/Purchase$State;
    .locals 1

    .line 76
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

    return-object v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lplugin/google/iap/v3/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setPurchaseState(Lplugin/google/iap/v3/util/Purchase$State;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lplugin/google/iap/v3/util/Purchase;->mPurchaseState:Lplugin/google/iap/v3/util/Purchase$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugin/google/iap/v3/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugin/google/iap/v3/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
