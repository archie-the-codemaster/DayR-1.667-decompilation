.class public Lpicker/FriendPickerFragment;
.super Lpicker/PickerFragment;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;,
        Lpicker/FriendPickerFragment$FriendPickerType;
    }
.end annotation


# static fields
.field public static final FRIEND_PICKER_TYPE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.FriendPickerType"

.field private static final ID:Ljava/lang/String; = "id"

.field public static final MULTI_SELECT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.MultiSelect"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final USER_ID_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.UserId"


# instance fields
.field private friendPickerType:Lpicker/FriendPickerFragment$FriendPickerType;

.field private multiSelect:Z

.field private preSelectedFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    sget v0, Lplugin/facebook/v4a/R$layout;->picker_friendpickerfragment:I

    invoke-direct {p0, v0}, Lpicker/PickerFragment;-><init>(I)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    .line 87
    sget-object v0, Lpicker/FriendPickerFragment$FriendPickerType;->FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    iput-object v0, p0, Lpicker/FriendPickerFragment;->friendPickerType:Lpicker/FriendPickerFragment$FriendPickerType;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpicker/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    return-void
.end method

.method private createRequest(Ljava/lang/String;Ljava/util/Set;)Lcom/facebook/GraphRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/GraphRequest;"
        }
    .end annotation

    .line 295
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lpicker/FriendPickerFragment;->friendPickerType:Lpicker/FriendPickerFragment$FriendPickerType;

    .line 297
    invoke-virtual {p1}, Lpicker/FriendPickerFragment$FriendPickerType;->getRequestPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 296
    invoke-static {v0, p1, v1}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, p2, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, p2, v1

    .line 304
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 306
    iget-object p2, p0, Lpicker/FriendPickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {p2}, Lpicker/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 308
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, ","

    .line 312
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fields"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    return-object p1
.end method


# virtual methods
.method createAdapter()Lpicker/PickerFragment$PickerFragmentAdapter;
    .locals 4

    .line 226
    new-instance v0, Lpicker/FriendPickerFragment$1;

    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lpicker/FriendPickerFragment$1;-><init>(Lpicker/FriendPickerFragment;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 238
    invoke-virtual {v0, v1}, Lpicker/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    .line 239
    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->getShowPictures()Z

    move-result v2

    invoke-virtual {v0, v2}, Lpicker/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "name"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 240
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpicker/PickerFragment$PickerFragmentAdapter;->setSortFields(Ljava/util/List;)V

    .line 241
    invoke-virtual {v0, v2}, Lpicker/PickerFragment$PickerFragmentAdapter;->setGroupByField(Ljava/lang/String;)V

    return-object v0
.end method

.method createLoadingStrategy()Lpicker/PickerFragment$LoadingStrategy;
    .locals 2

    .line 248
    new-instance v0, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lpicker/FriendPickerFragment;Lpicker/FriendPickerFragment$1;)V

    return-object v0
.end method

.method createSelectionStrategy()Lpicker/PickerFragment$SelectionStrategy;
    .locals 1

    .line 253
    iget-boolean v0, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    if-eqz v0, :cond_0

    new-instance v0, Lpicker/PickerFragment$MultiSelectionStrategy;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$MultiSelectionStrategy;-><init>(Lpicker/PickerFragment;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lpicker/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$SingleSelectionStrategy;-><init>(Lpicker/PickerFragment;)V

    :goto_0
    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 2

    .line 268
    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lplugin/facebook/v4a/R$string;->choose_friends:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSelect()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    return v0
.end method

.method getRequestForLoadData()Lcom/facebook/GraphRequest;
    .locals 2

    .line 258
    iget-object v0, p0, Lpicker/FriendPickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lpicker/FriendPickerFragment;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "me"

    .line 263
    :goto_0
    iget-object v1, p0, Lpicker/FriendPickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lpicker/FriendPickerFragment;->createRequest(Ljava/lang/String;Ljava/util/Set;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0

    .line 259
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t issue requests until Fragment has been created."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lpicker/FriendPickerFragment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(Z)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Lpicker/PickerFragment;->loadData(Z)V

    .line 291
    iget-object p1, p0, Lpicker/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lpicker/FriendPickerFragment;->setSelectedGraphObjects(Ljava/util/List;)V

    return-void
.end method

.method logAppEvents(Z)V
    .locals 3

    .line 273
    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Completed"

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    :goto_0
    const-string v2, "fb_dialog_outcome"

    .line 282
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->getSelection()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "num_friends_picked"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string v2, "fb_friend_picker_usage"

    .line 285
    invoke-virtual {v0, v2, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2, p3}, Lpicker/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 192
    sget-object p3, Lplugin/facebook/v4a/R$styleable;->picker_friend_picker_fragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 194
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_friend_picker_fragment_multi_select:I

    iget-boolean p3, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lpicker/FriendPickerFragment;->setMultiSelect(Z)V

    .line 196
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Lpicker/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 220
    iget-object v0, p0, Lpicker/FriendPickerFragment;->userId:Ljava/lang/String;

    const-string v1, "com.facebook.widget.FriendPickerFragment.UserId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    const-string v1, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFriendPickerType(Lpicker/FriendPickerFragment$FriendPickerType;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lpicker/FriendPickerFragment;->friendPickerType:Lpicker/FriendPickerFragment$FriendPickerType;

    return-void
.end method

.method public setMultiSelect(Z)V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    if-eq v0, p1, :cond_0

    .line 130
    iput-boolean p1, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    .line 131
    invoke-virtual {p0}, Lpicker/FriendPickerFragment;->createSelectionStrategy()Lpicker/PickerFragment$SelectionStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpicker/FriendPickerFragment;->setSelectionStrategy(Lpicker/PickerFragment$SelectionStrategy;)V

    :cond_0
    return-void
.end method

.method public setSelection(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "id"

    .line 174
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1, v2}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lpicker/FriendPickerFragment;->setSelectionByIds(Ljava/util/List;)V

    return-void
.end method

.method public varargs setSelection([Lorg/json/JSONObject;)V
    .locals 0

    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpicker/FriendPickerFragment;->setSelection(Ljava/util/List;)V

    return-void
.end method

.method public setSelectionByIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lpicker/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs setSelectionByIds([Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpicker/FriendPickerFragment;->setSelectionByIds(Ljava/util/List;)V

    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lpicker/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpicker/FriendPickerFragment;->setUserId(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-boolean v0, p0, Lpicker/FriendPickerFragment;->multiSelect:Z

    const-string v1, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lpicker/FriendPickerFragment;->setMultiSelect(Z)V

    const-string v0, "com.facebook.widget.FriendPickerFragment.FriendPickerType"

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpicker/FriendPickerFragment$FriendPickerType;->valueOf(Ljava/lang/String;)Lpicker/FriendPickerFragment$FriendPickerType;

    move-result-object p1

    iput-object p1, p0, Lpicker/FriendPickerFragment;->friendPickerType:Lpicker/FriendPickerFragment$FriendPickerType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lpicker/FriendPickerFragment;->userId:Ljava/lang/String;

    return-void
.end method
