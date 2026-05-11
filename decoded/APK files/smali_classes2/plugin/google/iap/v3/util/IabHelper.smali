.class public Lplugin/google/iap/v3/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;,
        Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;,
        Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    .line 77
    iput-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSetupDone:Z

    .line 83
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    .line 86
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSubscriptionsSupported:Z

    .line 90
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mAsyncInProgress:Z

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lplugin/google/iap/v3/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    .line 168
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 324
    iget-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    const-string v1, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 776
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 786
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 790
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object p0, v0, v2

    return-object p0

    .line 791
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 793
    array-length v0, v1

    if-lt p0, v0, :cond_2

    goto :goto_0

    .line 796
    :cond_2
    aget-object p0, v1, p0

    return-object p0

    .line 794
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 802
    iget-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 803
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method consume(Lplugin/google/iap/v3/util/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lplugin/google/iap/v3/util/IabException;
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 676
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 678
    iget-object v0, p1, Lplugin/google/iap/v3/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lplugin/google/iap/v3/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {p1}, Lplugin/google/iap/v3/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, ""

    .line 690
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 702
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 703
    new-instance v2, Lplugin/google/iap/v3/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 691
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 692
    new-instance v0, Lplugin/google/iap/v3/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 707
    new-instance v1, Lplugin/google/iap/v3/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 679
    :cond_3
    new-instance v0, Lplugin/google/iap/v3/util/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lplugin/google/iap/v3/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public consumeAsync(Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lplugin/google/iap/v3/util/Purchase;",
            ">;",
            "Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 760
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 761
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 762
    invoke-virtual {p0, p1, v0, p2}, Lplugin/google/iap/v3/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 1

    .line 747
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 748
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 751
    invoke-virtual {p0, v0, p2, p1}, Lplugin/google/iap/v3/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lplugin/google/iap/v3/util/Purchase;",
            ">;",
            "Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;",
            "Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 978
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lplugin/google/iap/v3/util/IabHelper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lplugin/google/iap/v3/util/IabHelper$3;-><init>(Lplugin/google/iap/v3/util/IabHelper;Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 998
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "Disposing."

    .line 310
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSetupDone:Z

    .line 312
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from service."

    .line 313
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    .line 318
    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 319
    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 320
    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    .line 182
    iput-boolean p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    .line 176
    iput-boolean p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugLog:Z

    .line 177
    iput-object p2, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 810
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 812
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 815
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 816
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 818
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 826
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 828
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 831
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 832
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 834
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    .line 463
    iget v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mRequestCode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 465
    :cond_0
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string p1, "handleActivityResult"

    .line 466
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 469
    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 470
    new-instance p2, Lplugin/google/iap/v3/util/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 471
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, v2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_1
    return v0

    .line 475
    :cond_2
    invoke-virtual {p0, p3}, Lplugin/google/iap/v3/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 476
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 477
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    if-nez v3, :cond_9

    const-string p2, "Successful resultcode from purchase activity."

    .line 480
    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 483
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 484
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item type: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    if-nez v5, :cond_3

    goto :goto_0

    .line 496
    :cond_3
    :try_start_0
    new-instance p2, Lplugin/google/iap/v3/util/Purchase;

    iget-object p3, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lplugin/google/iap/v3/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Lplugin/google/iap/v3/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 500
    iget-object v3, p0, Lplugin/google/iap/v3/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lplugin/google/iap/v3/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 502
    new-instance v1, Lplugin/google/iap/v3/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 503
    iget-object p3, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, v1, p2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_4
    return v0

    :cond_5
    const-string p3, "Purchase signature successfully verified."

    .line 506
    invoke-virtual {p0, p3}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_d

    .line 517
    new-instance p3, Lplugin/google/iap/v3/util/IabResult;

    const-string v2, "Success"

    invoke-direct {p3, v1, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    goto/16 :goto_2

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 509
    invoke-virtual {p0, p3}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 511
    new-instance p2, Lplugin/google/iap/v3/util/IabResult;

    invoke-direct {p2, p1, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 512
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p2, v2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_6
    return v0

    :cond_7
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 487
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 489
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 490
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1, v2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_8
    return v0

    :cond_9
    if-ne p2, v6, :cond_a

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_d

    .line 524
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 525
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    goto :goto_2

    :cond_a
    if-nez p2, :cond_c

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x7

    if-ne v3, p1, :cond_b

    .line 531
    new-instance p2, Lplugin/google/iap/v3/util/IabResult;

    const-string p3, "Item already owned."

    invoke-direct {p2, p1, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 533
    :cond_b
    new-instance p2, Lplugin/google/iap/v3/util/IabResult;

    const/16 p1, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p2, p1, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 534
    :goto_1
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_d

    invoke-interface {p1, p2, v2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    goto :goto_2

    .line 537
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {v3}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 539
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 540
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_d

    invoke-interface {p2, p1, v2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_d
    :goto_2
    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 355
    invoke-virtual/range {v0 .. v5}, Lplugin/google/iap/v3/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 360
    invoke-virtual/range {v0 .. v6}, Lplugin/google/iap/v3/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 9

    .line 393
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string v0, "launchPurchaseFlow"

    .line 394
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "subs"

    .line 397
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    .line 398
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const/16 p2, -0x3f1

    const-string p3, "Subscriptions are not available."

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_0

    .line 400
    invoke-interface {p5, p1, v1}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_3

    .line 405
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const/16 p2, -0x3e8

    const-string p3, "Improper initialization."

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_2

    .line 407
    invoke-interface {p5, p1, v1}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_2
    return-void

    .line 412
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 413
    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p6

    .line 414
    invoke-virtual {p0, p6}, Lplugin/google/iap/v3/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to buy item, Error response: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 417
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const-string p3, "Unable to buy item"

    invoke-direct {p1, v0, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_4

    .line 418
    invoke-interface {p5, p1, v1}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "BUY_INTENT"

    .line 422
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p6

    check-cast p6, Landroid/app/PendingIntent;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Request code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 424
    iput p4, p0, Lplugin/google/iap/v3/util/IabHelper;->mRequestCode:I

    .line 425
    iput-object p5, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchaseListener:Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 426
    iput-object p3, p0, Lplugin/google/iap/v3/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 427
    invoke-virtual {p6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 p3, 0x0

    .line 429
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 430
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p1

    move v4, p4

    .line 427
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 440
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteException while launching purchase flow for sku "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 443
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const/16 p2, -0x3e9

    const-string p3, "Remote exception while starting purchase flow"

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_6

    .line 444
    invoke-interface {p5, p1, v1}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 433
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 436
    new-instance p1, Lplugin/google/iap/v3/util/IabResult;

    const/16 p2, -0x3ec

    const-string p3, "Failed to send intent."

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_6

    .line 437
    invoke-interface {p5, p1, v1}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 365
    invoke-virtual/range {v0 .. v5}, Lplugin/google/iap/v3/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 370
    invoke-virtual/range {v0 .. v6}, Lplugin/google/iap/v3/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    .line 1006
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    .line 1010
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/Set;)Lplugin/google/iap/v3/util/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lplugin/google/iap/v3/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lplugin/google/iap/v3/util/IabException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0, p1, p2, v0}, Lplugin/google/iap/v3/util/IabHelper;->queryInventory(ZLjava/util/Set;Ljava/util/Set;)Lplugin/google/iap/v3/util/Inventory;

    move-result-object p1

    return-object p1
.end method

.method public queryInventory(ZLjava/util/Set;Ljava/util/Set;)Lplugin/google/iap/v3/util/Inventory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lplugin/google/iap/v3/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lplugin/google/iap/v3/util/IabException;
        }
    .end annotation

    const-string v0, "subs"

    const-string v1, "inapp"

    .line 564
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string v2, "queryInventory"

    .line 565
    invoke-virtual {p0, v2}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 567
    :try_start_0
    new-instance v2, Lplugin/google/iap/v3/util/Inventory;

    invoke-direct {v2}, Lplugin/google/iap/v3/util/Inventory;-><init>()V

    .line 568
    invoke-virtual {p0, v2, v1}, Lplugin/google/iap/v3/util/IabHelper;->queryPurchases(Lplugin/google/iap/v3/util/Inventory;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_1

    .line 574
    invoke-virtual {p0, v1, v2, p2}, Lplugin/google/iap/v3/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lplugin/google/iap/v3/util/Inventory;Ljava/util/Set;)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance p1, Lplugin/google/iap/v3/util/IabException;

    const-string p3, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 581
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lplugin/google/iap/v3/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz p2, :cond_4

    .line 582
    invoke-virtual {p0, v2, v0}, Lplugin/google/iap/v3/util/IabHelper;->queryPurchases(Lplugin/google/iap/v3/util/Inventory;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 588
    invoke-virtual {p0, v0, v2, p3}, Lplugin/google/iap/v3/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lplugin/google/iap/v3/util/Inventory;Ljava/util/Set;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 590
    :cond_2
    new-instance p2, Lplugin/google/iap/v3/util/IabException;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 584
    :cond_3
    new-instance p1, Lplugin/google/iap/v3/util/IabException;

    const-string p3, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, p2, p3}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v2

    .line 570
    :cond_5
    new-instance p1, Lplugin/google/iap/v3/util/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v3, p2}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 601
    new-instance p2, Lplugin/google/iap/v3/util/IabException;

    const/16 p3, -0x3ea

    const-string v0, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 598
    new-instance p2, Lplugin/google/iap/v3/util/IabException;

    const/16 p3, -0x3e9

    const-string v0, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lplugin/google/iap/v3/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 657
    invoke-virtual {p0, v1, v0, v0, p1}, Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    .line 635
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lplugin/google/iap/v3/util/IabHelper$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lplugin/google/iap/v3/util/IabHelper$2;-><init>(Lplugin/google/iap/v3/util/IabHelper;ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 653
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public queryInventoryAsync(ZLplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0, p1, v0, v0, p2}, Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method queryPurchases(Lplugin/google/iap/v3/util/Inventory;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/16 v1, -0x3ea

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 852
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling getPurchases with continuation token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 853
    iget-object v4, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, p2, v2}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 856
    invoke-virtual {p0, v2}, Lplugin/google/iap/v3/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v4

    .line 857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Owned items response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v4

    :cond_1
    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 862
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 863
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "INAPP_DATA_SIGNATURE_LIST"

    .line 864
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    .line 869
    :cond_2
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 871
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 873
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    move v7, v3

    const/4 v3, 0x0

    .line 876
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 877
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 878
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 879
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 880
    iget-object v11, p0, Lplugin/google/iap/v3/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v11, v8, v9}, Lplugin/google/iap/v3/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 881
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sku is owned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 882
    new-instance v10, Lplugin/google/iap/v3/util/Purchase;

    invoke-direct {v10, p2, v8, v9}, Lplugin/google/iap/v3/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {v10}, Lplugin/google/iap/v3/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "BUG: empty/null token!"

    .line 885
    invoke-virtual {p0, v9}, Lplugin/google/iap/v3/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 886
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Purchase data: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 890
    :cond_3
    invoke-virtual {p1, v10}, Lplugin/google/iap/v3/util/Inventory;->addPurchase(Lplugin/google/iap/v3/util/Purchase;)V

    goto :goto_2

    :cond_4
    const-string v7, "Purchase signature verification **FAILED**. Not adding item."

    .line 893
    invoke-virtual {p0, v7}, Lplugin/google/iap/v3/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 894
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   Purchase data: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   Signature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v7, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 900
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 902
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v7, :cond_6

    const/16 v0, -0x3eb

    :cond_6
    return v0

    :cond_7
    move v3, v7

    goto/16 :goto_0

    :cond_8
    :goto_3
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 865
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    return v1
.end method

.method querySkuDetails(Ljava/lang/String;Lplugin/google/iap/v3/util/Inventory;Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lplugin/google/iap/v3/util/Inventory;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 909
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-virtual {p2, p1}, Lplugin/google/iap/v3/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    .line 913
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 914
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 916
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 917
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 922
    :cond_1
    iget-object p3, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez p3, :cond_2

    const/4 p1, 0x6

    return p1

    .line 926
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_3

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 927
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 931
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 932
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 933
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 934
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_4

    .line 935
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 939
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 941
    :cond_5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 944
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 945
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 946
    iget-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    .line 949
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 950
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 952
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSkuDetails() failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lplugin/google/iap/v3/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_7
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 956
    invoke-virtual {p0, p1}, Lplugin/google/iap/v3/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    .line 961
    :cond_8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 965
    new-instance v3, Lplugin/google/iap/v3/util/SkuDetails;

    invoke-direct {v3, p1, v2}, Lplugin/google/iap/v3/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2, v3}, Lplugin/google/iap/v3/util/Inventory;->addSkuDetails(Lplugin/google/iap/v3/util/SkuDetails;)V

    goto :goto_2

    :cond_9
    return v1
.end method

.method public startSetup(Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4

    .line 207
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    .line 208
    iget-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_2

    const-string v0, "Starting in-app billing setup."

    .line 211
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 215
    new-instance v0, Lplugin/google/iap/v3/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lplugin/google/iap/v3/util/IabHelper$1;-><init>(Lplugin/google/iap/v3/util/IabHelper;Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to bind IABService"

    .line 285
    invoke-virtual {p0, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 287
    new-instance v0, Lplugin/google/iap/v3/util/IabResult;

    const/4 v1, 0x6

    const-string v2, "Binding the Billing Service to the Context failed."

    invoke-direct {v0, v1, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lplugin/google/iap/v3/util/IabResult;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 296
    new-instance v0, Lplugin/google/iap/v3/util/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lplugin/google/iap/v3/util/IabResult;)V

    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .line 329
    invoke-direct {p0}, Lplugin/google/iap/v3/util/IabHelper;->checkNotDisposed()V

    .line 330
    iget-boolean v0, p0, Lplugin/google/iap/v3/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
