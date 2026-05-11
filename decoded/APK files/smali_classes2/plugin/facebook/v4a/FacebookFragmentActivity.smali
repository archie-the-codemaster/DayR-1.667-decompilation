.class public Lplugin/facebook/v4a/FacebookFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookFragmentActivity.java"


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x2f16b

.field public static final FRAGMENT_EXTRAS:Ljava/lang/String; = "fragment_extras"

.field public static final FRAGMENT_LISTENER:Ljava/lang/String; = "fragment_listener"

.field public static final FRAGMENT_NAME:Ljava/lang/String; = "fragment_name"

.field private static final LOCATION_CHANGE_THRESHOLD:I = 0x32


# instance fields
.field private mFragment:Lpicker/PickerFragment;

.field private mFragmentToLaunch:Ljava/lang/String;

.field private mListener:I

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mListener:I

    return p0
.end method

.method static synthetic access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lplugin/facebook/v4a/FacebookFragmentActivity;->pushStringIfNotNull(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lplugin/facebook/v4a/FacebookFragmentActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->pushPlaceSelection(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lplugin/facebook/v4a/FacebookFragmentActivity;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->pushFriendSelection(Ljava/util/List;)V

    return-void
.end method

.method private printIllegalFragmentTypeMessage(Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": can\'t launch Fragment "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragmentToLaunch:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Acceptable fragment types are: \"place\" and \"friends\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Corona"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pushFriendSelection(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;

    invoke-direct {v0, p0, p1}, Lplugin/facebook/v4a/FacebookFragmentActivity$1;-><init>(Lplugin/facebook/v4a/FacebookFragmentActivity;Ljava/util/List;)V

    .line 120
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method

.method private pushPlaceSelection(Lorg/json/JSONObject;)V
    .locals 1

    .line 124
    new-instance v0, Lplugin/facebook/v4a/FacebookFragmentActivity$2;

    invoke-direct {v0, p0, p1}, Lplugin/facebook/v4a/FacebookFragmentActivity$2;-><init>(Lplugin/facebook/v4a/FacebookFragmentActivity;Lorg/json/JSONObject;)V

    .line 173
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method

.method private pushStringIfNotNull(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p2, -0x2

    .line 69
    invoke-virtual {p1, p2, p3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x2f16b

    .line 185
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 186
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "fragment_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragmentToLaunch:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "fragment_listener"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mListener:I

    .line 192
    invoke-virtual {p0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "fragment_extras"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    .line 195
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragmentToLaunch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x23c4b66b

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x65cd907

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "place"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "friends"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    const-string v1, "FacebookFragmentActivity.onCreate()"

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    .line 298
    invoke-direct {p0, v1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->printIllegalFragmentTypeMessage(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_3
    new-instance p1, Lpicker/FriendPickerFragment;

    invoke-direct {p1}, Lpicker/FriendPickerFragment;-><init>()V

    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    .line 280
    iget-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    check-cast p1, Lpicker/FriendPickerFragment;

    .line 281
    sget-object v1, Lpicker/FriendPickerFragment$FriendPickerType;->TAGGABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    invoke-virtual {p1, v1}, Lpicker/FriendPickerFragment;->setFriendPickerType(Lpicker/FriendPickerFragment$FriendPickerType;)V

    .line 283
    new-instance v1, Lplugin/facebook/v4a/FacebookFragmentActivity$5;

    invoke-direct {v1, p0}, Lplugin/facebook/v4a/FacebookFragmentActivity$5;-><init>(Lplugin/facebook/v4a/FacebookFragmentActivity;)V

    invoke-virtual {p1, v1}, Lpicker/FriendPickerFragment;->setOnDoneButtonClickedListener(Lpicker/PickerFragment$OnDoneButtonClickedListener;)V

    goto/16 :goto_4

    .line 197
    :cond_4
    new-instance v2, Lpicker/PlacePickerFragment;

    invoke-direct {v2}, Lpicker/PlacePickerFragment;-><init>()V

    .line 198
    iput-object v2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    const-string v3, "title"

    .line 200
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 202
    invoke-virtual {v2, v3}, Lpicker/PlacePickerFragment;->setTitleText(Ljava/lang/String;)V

    :cond_5
    const-string v3, "searchText"

    .line 205
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 207
    invoke-virtual {v2, v3}, Lpicker/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    :cond_6
    const-string v3, "latitude"

    .line 210
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "longitude"

    .line 211
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Corona"

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 213
    new-instance v6, Landroid/location/Location;

    const-string v7, "passive"

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    .line 215
    :try_start_0
    iget-object v6, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 216
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 217
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lpicker/PlacePickerFragment;->setLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": failed to parse lat/long"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    const-string v3, "resultsLimit"

    .line 223
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 226
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lpicker/PlacePickerFragment;->setResultsLimit(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": failed to set resultsLimit"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    const-string v3, "radiusInMeters"

    .line 232
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 235
    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Lpicker/PlacePickerFragment;->setRadiusInMeters(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": failed to set radiusInMeters"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_9
    :goto_3
    new-instance p1, Lplugin/facebook/v4a/FacebookFragmentActivity$3;

    invoke-direct {p1, p0}, Lplugin/facebook/v4a/FacebookFragmentActivity$3;-><init>(Lplugin/facebook/v4a/FacebookFragmentActivity;)V

    invoke-virtual {v2, p1}, Lpicker/PlacePickerFragment;->setOnSelectionChangedListener(Lpicker/PickerFragment$OnSelectionChangedListener;)V

    .line 259
    new-instance p1, Lplugin/facebook/v4a/FacebookFragmentActivity$4;

    invoke-direct {p1, p0}, Lplugin/facebook/v4a/FacebookFragmentActivity$4;-><init>(Lplugin/facebook/v4a/FacebookFragmentActivity;)V

    invoke-virtual {v2, p1}, Lpicker/PlacePickerFragment;->setOnDoneButtonClickedListener(Lpicker/PickerFragment$OnDoneButtonClickedListener;)V

    .line 302
    :goto_4
    invoke-virtual {p0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 303
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 395
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 398
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    const-string v0, "location"

    .line 400
    invoke-virtual {p0, v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 401
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocationListener:Landroid/location/LocationListener;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 15

    const-string v0, "Corona"

    .line 308
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v1, "FacebookFragmentActivity.onResume()"

    .line 315
    :try_start_0
    iget-object v2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragmentToLaunch:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x23c4b66b

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    const v5, 0x65cd907

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "place"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "friends"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_3

    .line 384
    invoke-direct {p0, v1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->printIllegalFragmentTypeMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 324
    :cond_3
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    const-string v3, "location"

    .line 326
    invoke-virtual {p0, v3}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/location/LocationManager;

    .line 327
    invoke-virtual {v8, v2, v7}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v9

    .line 328
    iget-object v2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    check-cast v2, Lpicker/PlacePickerFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "WARNING: "

    if-eqz v9, :cond_6

    .line 330
    :try_start_1
    invoke-virtual {v8, v9}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    .line 331
    invoke-virtual {v8, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 332
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocationListener:Landroid/location/LocationListener;

    if-nez v3, :cond_4

    .line 333
    new-instance v3, Lplugin/facebook/v4a/FacebookFragmentActivity$6;

    invoke-direct {v3, p0, v2}, Lplugin/facebook/v4a/FacebookFragmentActivity$6;-><init>(Lplugin/facebook/v4a/FacebookFragmentActivity;Lpicker/PlacePickerFragment;)V

    iput-object v3, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocationListener:Landroid/location/LocationListener;

    :cond_4
    const-wide/16 v10, 0x1

    const/high16 v12, 0x42480000    # 50.0f

    .line 362
    iget-object v13, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 364
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    .line 362
    invoke-virtual/range {v8 .. v14}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 366
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": is trying to use a location provider that\'s disabled! Location services will not be started."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": couldn\'t find a location provider! Location services will not be started."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_1
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    if-eqz v3, :cond_7

    .line 376
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lpicker/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 377
    invoke-virtual {v2, v7}, Lpicker/PlacePickerFragment;->loadData(Z)V

    goto :goto_2

    .line 379
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": doesn\'t have a starting location. Places Picker Fragment will not be shown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 318
    :cond_8
    iget-object v2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity;->mFragment:Lpicker/PickerFragment;

    invoke-virtual {v2, v7}, Lpicker/PickerFragment;->loadData(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": failed to resume"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
