.class final Lcom/facebook/appevents/AppEventsLoggerImpl$1;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.facebook.core.Core"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "com.facebook.login.Login"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "com.facebook.share.Share"

    aput-object v6, v2, v5

    const/4 v6, 0x3

    const-string v7, "com.facebook.places.Places"

    aput-object v7, v2, v6

    const/4 v7, 0x4

    const-string v8, "com.facebook.messenger.Messenger"

    aput-object v8, v2, v7

    const/4 v8, 0x5

    const-string v9, "com.facebook.applinks.AppLinks"

    aput-object v9, v2, v8

    const/4 v9, 0x6

    const-string v10, "com.facebook.marketing.Marketing"

    aput-object v10, v2, v9

    const/4 v10, 0x7

    const-string v11, "com.facebook.all.All"

    aput-object v11, v2, v10

    const/16 v11, 0x8

    const-string v12, "com.android.billingclient.api.BillingClient"

    aput-object v12, v2, v11

    const/16 v12, 0x9

    const-string v13, "com.android.vending.billing.IInAppBillingService"

    aput-object v13, v2, v12

    new-array v1, v1, [Ljava/lang/String;

    const-string v13, "core_lib_included"

    aput-object v13, v1, v3

    const-string v13, "login_lib_included"

    aput-object v13, v1, v4

    const-string v13, "share_lib_included"

    aput-object v13, v1, v5

    const-string v5, "places_lib_included"

    aput-object v5, v1, v6

    const-string v5, "messenger_lib_included"

    aput-object v5, v1, v7

    const-string v5, "applinks_lib_included"

    aput-object v5, v1, v8

    const-string v5, "marketing_lib_included"

    aput-object v5, v1, v9

    const-string v5, "all_lib_included"

    aput-object v5, v1, v10

    const-string v5, "billing_client_lib_included"

    aput-object v5, v1, v11

    const-string v5, "billing_service_lib_included"

    aput-object v5, v1, v12

    .line 163
    array-length v5, v2

    array-length v6, v1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 169
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_0

    .line 170
    aget-object v7, v2, v5

    .line 171
    aget-object v8, v1, v5

    .line 174
    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 175
    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int v7, v4, v5

    or-int/2addr v6, v7

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$context:Landroid/content/Context;

    const-string v2, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kitsBitmask"

    .line 183
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v2, 0x0

    const-string v3, "fb_sdk_initialize"

    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 164
    :cond_2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Number of class names and key names should match"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
