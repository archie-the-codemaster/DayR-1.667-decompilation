.class public Lpicker/PlacePickerFragment;
.super Lpicker/PickerFragment;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpicker/PlacePickerFragment$SearchTextWatcher;,
        Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DEFAULT_RADIUS_IN_METERS:I = 0x3e8

.field public static final DEFAULT_RESULTS_LIMIT:I = 0x64

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.Location"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final RADIUS_IN_METERS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

.field public static final RESULTS_LIMIT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ResultsLimit"

.field public static final SEARCH_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.SearchText"

.field public static final SHOW_SEARCH_BOX_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

.field private static final TAG:Ljava/lang/String; = "PlacePickerFragment"

.field private static final WERE_HERE_COUNT:Ljava/lang/String; = "were_here_count"

.field private static final searchTextTimerDelayInMilliseconds:I = 0x7d0


# instance fields
.field private hasSearchTextChangedSinceLastQuery:Z

.field private location:Landroid/location/Location;

.field private radiusInMeters:I

.field private resultsLimit:I

.field private searchBox:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private searchTextTimer:Ljava/util/Timer;

.field private showSearchBox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    sget v0, Lplugin/facebook/v4a/R$layout;->picker_placepickerfragment:I

    invoke-direct {p0, v0}, Lpicker/PickerFragment;-><init>(I)V

    const/16 v0, 0x3e8

    .line 100
    iput v0, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    const/16 v0, 0x64

    .line 101
    iput v0, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    return-void
.end method

.method static synthetic access$200(Lpicker/PlacePickerFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lpicker/PlacePickerFragment;->onSearchTextTimerTriggered()V

    return-void
.end method

.method private createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;)Lcom/facebook/GraphRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/GraphRequest;"
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 402
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 405
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string p5, "id"

    aput-object p5, p3, p4

    const/4 p4, 0x1

    const-string p5, "name"

    aput-object p5, p3, p4

    const/4 p4, 0x2

    const-string p5, "location"

    aput-object p5, p3, p4

    const/4 p4, 0x3

    const-string p5, "category"

    aput-object p5, p3, p4

    const/4 p4, 0x4

    const-string p5, "were_here_count"

    aput-object p5, p3, p4

    .line 413
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 415
    iget-object p3, p0, Lpicker/PlacePickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {p3}, Lpicker/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 417
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, ","

    .line 421
    invoke-static {p4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "fields"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1, p3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private createSearchTextTimer()Ljava/util/Timer;
    .locals 7

    .line 428
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 429
    new-instance v1, Lpicker/PlacePickerFragment$2;

    invoke-direct {v1, p0}, Lpicker/PlacePickerFragment$2;-><init>(Lpicker/PlacePickerFragment;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-object v6
.end method

.method private onSearchTextTimerTriggered()V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lpicker/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 442
    new-instance v1, Lpicker/PlacePickerFragment$3;

    invoke-direct {v1, p0}, Lpicker/PlacePickerFragment$3;-><init>(Lpicker/PlacePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lpicker/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    :goto_0
    return-void
.end method


# virtual methods
.method createAdapter()Lpicker/PickerFragment$PickerFragmentAdapter;
    .locals 2

    .line 353
    new-instance v0, Lpicker/PlacePickerFragment$1;

    .line 356
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lpicker/PlacePickerFragment$1;-><init>(Lpicker/PlacePickerFragment;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 384
    invoke-virtual {v0, v1}, Lpicker/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    .line 385
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lpicker/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    return-object v0
.end method

.method createLoadingStrategy()Lpicker/PickerFragment$LoadingStrategy;
    .locals 2

    .line 391
    new-instance v0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lpicker/PlacePickerFragment;Lpicker/PlacePickerFragment$1;)V

    return-object v0
.end method

.method createSelectionStrategy()Lpicker/PickerFragment$SelectionStrategy;
    .locals 1

    .line 396
    new-instance v0, Lpicker/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$SingleSelectionStrategy;-><init>(Lpicker/PickerFragment;)V

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 2

    .line 331
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lplugin/facebook/v4a/R$string;->nearby:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 121
    iget-object v0, p0, Lpicker/PlacePickerFragment;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getRadiusInMeters()I
    .locals 1

    .line 139
    iget v0, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    return v0
.end method

.method getRequestForLoadData()Lcom/facebook/GraphRequest;
    .locals 6

    .line 326
    iget-object v1, p0, Lpicker/PlacePickerFragment;->location:Landroid/location/Location;

    iget v2, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    iget v3, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    iget-object v4, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    iget-object v5, p0, Lpicker/PlacePickerFragment;->extraFields:Ljava/util/HashSet;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lpicker/PlacePickerFragment;->createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResultsLimit()I
    .locals 1

    .line 157
    iget v0, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Lorg/json/JSONObject;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method logAppEvents(Z)V
    .locals 3

    .line 336
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 337
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Completed"

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    :goto_0
    const-string v2, "fb_dialog_outcome"

    .line 345
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getSelection()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v2, "num_places_picked"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string v2, "fb_place_picker_usage"

    .line 348
    invoke-virtual {v0, v2, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 291
    invoke-super {p0, p1}, Lpicker/PickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 293
    iget-object p1, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 301
    invoke-super {p0}, Lpicker/PickerFragment;->onDetach()V

    .line 303
    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 305
    iget-object v1, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 257
    invoke-super {p0, p1, p2, p3}, Lpicker/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 258
    sget-object p3, Lplugin/facebook/v4a/R$styleable;->picker_place_picker_fragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 260
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_place_picker_fragment_radius_in_meters:I

    iget p3, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lpicker/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 261
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_place_picker_fragment_results_limit:I

    iget p3, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lpicker/PlacePickerFragment;->setResultsLimit(I)V

    .line 262
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_place_picker_fragment_results_limit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 263
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_place_picker_fragment_search_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lpicker/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 265
    :cond_0
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_place_picker_fragment_show_search_box:I

    iget-boolean p3, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    .line 267
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method onLoadingData()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lpicker/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    return-void
.end method

.method public onSearchBoxTextChanged(Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 209
    iget-object p2, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 216
    :cond_1
    iput-object p1, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lpicker/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 223
    iget-object p1, p0, Lpicker/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    if-nez p1, :cond_2

    .line 224
    invoke-direct {p0}, Lpicker/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lpicker/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    :cond_2
    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 310
    invoke-super {p0, p1}, Lpicker/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 312
    iget v0, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    iget v0, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    const-string v1, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lpicker/PlacePickerFragment;->location:Landroid/location/Location;

    const-string v1, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    iget-boolean v0, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    const-string v1, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lpicker/PlacePickerFragment;->location:Landroid/location/Location;

    return-void
.end method

.method public setRadiusInMeters(I)V
    .locals 0

    .line 148
    iput p1, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    return-void
.end method

.method public setResultsLimit(I)V
    .locals 0

    .line 166
    iput p1, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 190
    :cond_0
    iput-object p1, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lpicker/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    .line 242
    iget v0, p0, Lpicker/PlacePickerFragment;->radiusInMeters:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lpicker/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 243
    iget v0, p0, Lpicker/PlacePickerFragment;->resultsLimit:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lpicker/PlacePickerFragment;->setResultsLimit(I)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpicker/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    :cond_0
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 249
    invoke-virtual {p0, v0}, Lpicker/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 251
    :cond_1
    iget-boolean v0, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    const-string v1, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    :cond_2
    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 272
    iget-boolean v0, p0, Lpicker/PlacePickerFragment;->showSearchBox:Z

    if-eqz v0, :cond_0

    .line 273
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 275
    invoke-virtual {p0}, Lpicker/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lplugin/facebook/v4a/R$layout;->picker_search_box:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 280
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_search_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    .line 282
    iget-object p1, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    new-instance v0, Lpicker/PlacePickerFragment$SearchTextWatcher;

    invoke-direct {v0, p0, v2}, Lpicker/PlacePickerFragment$SearchTextWatcher;-><init>(Lpicker/PlacePickerFragment;Lpicker/PlacePickerFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 283
    iget-object p1, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 284
    iget-object p1, p0, Lpicker/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    iget-object v0, p0, Lpicker/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
