.class Lplugin/google/iap/v3/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/util/IabHelper;->startSetup(Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/util/IabHelper;

.field final synthetic val$listener:Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/util/IabHelper;Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iput-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$1;->val$listener:Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 224
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-boolean p1, p1, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    const-string v0, "Billing service connected."

    invoke-virtual {p1, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, p1, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 227
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-object p1, p1, Lplugin/google/iap/v3/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 229
    :try_start_0
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    const-string v0, "Checking for in-app billing 3 support."

    invoke-virtual {p2, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-object p2, p2, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const-string v0, "inapp"

    const/4 v1, 0x3

    invoke-interface {p2, v1, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 234
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->val$listener:Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->val$listener:Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lplugin/google/iap/v3/util/IabResult;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {v1, p2, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lplugin/google/iap/v3/util/IabResult;)V

    .line 238
    :cond_1
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iput-boolean v0, p1, Lplugin/google/iap/v3/util/IabHelper;->mSubscriptionsSupported:Z

    return-void

    .line 241
    :cond_2
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-object p2, p2, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const-string v2, "subs"

    invoke-interface {p2, v1, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 246
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {p1, v1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iput-boolean p2, p1, Lplugin/google/iap/v3/util/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_0

    .line 250
    :cond_3
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 253
    :goto_0
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iput-boolean p2, p1, Lplugin/google/iap/v3/util/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->val$listener:Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_4

    .line 265
    new-instance p2, Lplugin/google/iap/v3/util/IabResult;

    const-string v1, "Setup successful."

    invoke-direct {p2, v0, v1}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lplugin/google/iap/v3/util/IabResult;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 256
    iget-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$1;->val$listener:Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p2, :cond_5

    .line 257
    new-instance v0, Lplugin/google/iap/v3/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lplugin/google/iap/v3/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lplugin/google/iap/v3/util/IabResult;)V

    .line 260
    :cond_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    const-string v0, "Billing service disconnected."

    invoke-virtual {p1, v0}, Lplugin/google/iap/v3/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$1;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lplugin/google/iap/v3/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
