.class public abstract Lpicker/PickerFragment;
.super Landroid/support/v4/app/Fragment;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpicker/PickerFragment$PickerFragmentAdapter;,
        Lpicker/PickerFragment$MultiSelectionStrategy;,
        Lpicker/PickerFragment$SingleSelectionStrategy;,
        Lpicker/PickerFragment$SelectionStrategy;,
        Lpicker/PickerFragment$LoadingStrategy;,
        Lpicker/PickerFragment$GraphObjectFilter;,
        Lpicker/PickerFragment$OnDoneButtonClickedListener;,
        Lpicker/PickerFragment$OnSelectionChangedListener;,
        Lpicker/PickerFragment$OnDataChangedListener;,
        Lpicker/PickerFragment$OnErrorListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CIRCLE_SHOW_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.ActivityCircleShown"

.field public static final DONE_BUTTON_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.DoneButtonText"

.field public static final EXTRA_FIELDS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ExtraFields"

.field private static final PROFILE_PICTURE_PREFETCH_BUFFER:I = 0x5

.field private static final SELECTION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.Selection"

.field public static final SHOW_PICTURES_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowPictures"

.field public static final SHOW_TITLE_BAR_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowTitleBar"

.field public static final TITLE_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.TitleText"


# instance fields
.field private accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private activityCircle:Landroid/widget/ProgressBar;

.field adapter:Lpicker/GraphObjectAdapter;

.field private appEventsLogged:Z

.field private doneButton:Landroid/widget/Button;

.field private doneButtonBackground:Landroid/graphics/drawable/Drawable;

.field private doneButtonText:Ljava/lang/String;

.field extraFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lpicker/PickerFragment$GraphObjectFilter;

.field private final layout:I

.field private listView:Landroid/widget/ListView;

.field private loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

.field private onDataChangedListener:Lpicker/PickerFragment$OnDataChangedListener;

.field private onDoneButtonClickedListener:Lpicker/PickerFragment$OnDoneButtonClickedListener;

.field private onErrorListener:Lpicker/PickerFragment$OnErrorListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onSelectionChangedListener:Lpicker/PickerFragment$OnSelectionChangedListener;

.field private selectionHint:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

.field private showPictures:Z

.field private showTitleBar:Z

.field private titleBarBackground:Landroid/graphics/drawable/Drawable;

.field private titleText:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 116
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lpicker/PickerFragment;->showPictures:Z

    .line 99
    iput-boolean v0, p0, Lpicker/PickerFragment;->showTitleBar:Z

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpicker/PickerFragment;->extraFields:Ljava/util/HashSet;

    .line 772
    new-instance v0, Lpicker/PickerFragment$6;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$6;-><init>(Lpicker/PickerFragment;)V

    iput-object v0, p0, Lpicker/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 117
    iput p1, p0, Lpicker/PickerFragment;->layout:I

    return-void
.end method

.method static synthetic access$000(Lpicker/PickerFragment;Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lpicker/PickerFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lpicker/PickerFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lpicker/PickerFragment;->clearResults()V

    return-void
.end method

.method static synthetic access$202(Lpicker/PickerFragment;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lpicker/PickerFragment;->appEventsLogged:Z

    return p1
.end method

.method static synthetic access$300(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnDoneButtonClickedListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lpicker/PickerFragment;->onDoneButtonClickedListener:Lpicker/PickerFragment$OnDoneButtonClickedListener;

    return-object p0
.end method

.method static synthetic access$400(Lpicker/PickerFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lpicker/PickerFragment;->reprioritizeDownloads()V

    return-void
.end method

.method static synthetic access$500(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnErrorListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lpicker/PickerFragment;->onErrorListener:Lpicker/PickerFragment$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lpicker/PickerFragment;)Lpicker/PickerFragment$SelectionStrategy;
    .locals 0

    .line 61
    iget-object p0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    return-object p0
.end method

.method private clearResults()V
    .locals 3

    .line 684
    iget-object v0, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {v0}, Lpicker/PickerFragment$SelectionStrategy;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 686
    iget-object v1, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v1}, Lpicker/GraphObjectAdapter;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 688
    iget-object v2, p0, Lpicker/PickerFragment;->loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

    invoke-virtual {v2}, Lpicker/PickerFragment$LoadingStrategy;->clearResults()V

    .line 689
    iget-object v2, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {v2}, Lpicker/PickerFragment$SelectionStrategy;->clear()V

    .line 690
    iget-object v2, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v2}, Lpicker/GraphObjectAdapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lpicker/PickerFragment;->onDataChangedListener:Lpicker/PickerFragment$OnDataChangedListener;

    if-eqz v1, :cond_0

    .line 694
    invoke-interface {v1, p0}, Lpicker/PickerFragment$OnDataChangedListener;->onDataChanged(Lpicker/PickerFragment;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lpicker/PickerFragment;->onSelectionChangedListener:Lpicker/PickerFragment$OnSelectionChangedListener;

    if-eqz v0, :cond_1

    .line 697
    invoke-interface {v0, p0}, Lpicker/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lpicker/PickerFragment;)V

    :cond_1
    return-void
.end method

.method private inflateTitleBar(Landroid/view/ViewGroup;)V
    .locals 4

    .line 625
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_title_bar_stub:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 629
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 632
    sget v3, Lplugin/facebook/v4a/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 633
    iget-object v2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    iget-object v1, p0, Lpicker/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    :cond_0
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpicker/PickerFragment;->doneButton:Landroid/widget/Button;

    .line 640
    iget-object v0, p0, Lpicker/PickerFragment;->doneButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 641
    new-instance v1, Lpicker/PickerFragment$5;

    invoke-direct {v1, p0}, Lpicker/PickerFragment$5;-><init>(Lpicker/PickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    invoke-virtual {p0}, Lpicker/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lpicker/PickerFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpicker/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_1
    iget-object v0, p0, Lpicker/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 658
    iget-object v1, p0, Lpicker/PickerFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    :cond_2
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lpicker/PickerFragment;->titleTextView:Landroid/widget/TextView;

    .line 663
    iget-object p1, p0, Lpicker/PickerFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 664
    invoke-virtual {p0}, Lpicker/PickerFragment;->getTitleText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 665
    iget-object p1, p0, Lpicker/PickerFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpicker/PickerFragment;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0

    .line 673
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 674
    iget-object p2, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {p2, p1}, Lpicker/GraphObjectAdapter;->getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 675
    iget-object p2, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {p2, p1}, Lpicker/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    .line 676
    iget-object p1, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {p1}, Lpicker/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 678
    iget-object p1, p0, Lpicker/PickerFragment;->onSelectionChangedListener:Lpicker/PickerFragment$OnSelectionChangedListener;

    if-eqz p1, :cond_0

    .line 679
    invoke-interface {p1, p0}, Lpicker/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lpicker/PickerFragment;)V

    :cond_0
    return-void
.end method

.method private reprioritizeDownloads()V
    .locals 4

    .line 765
    iget-object v0, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 767
    iget-object v1, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 768
    iget-object v2, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v0, v3}, Lpicker/GraphObjectAdapter;->prioritizeViewRange(III)V

    :cond_0
    return-void
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .locals 3

    .line 618
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 620
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 621
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method abstract createAdapter()Lpicker/PickerFragment$PickerFragmentAdapter;
.end method

.method abstract createLoadingStrategy()Lpicker/PickerFragment$LoadingStrategy;
.end method

.method abstract createSelectionStrategy()Lpicker/PickerFragment$SelectionStrategy;
.end method

.method displayActivityCircle()V
    .locals 2

    .line 582
    iget-object v0, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lpicker/PickerFragment;->layoutActivityCircle()V

    .line 584
    iget-object v0, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method filterIncludesItem(Lorg/json/JSONObject;)Z
    .locals 1

    .line 534
    iget-object v0, p0, Lpicker/PickerFragment;->filter:Lpicker/PickerFragment$GraphObjectFilter;

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p1}, Lpicker/PickerFragment$GraphObjectFilter;->includeItem(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getDefaultDoneButtonText()Ljava/lang/String;
    .locals 1

    .line 578
    sget v0, Lplugin/facebook/v4a/R$string;->picker_picker_done_button_text:I

    invoke-virtual {p0, v0}, Lpicker/PickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoneButtonText()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lpicker/PickerFragment;->getDefaultDoneButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 462
    :cond_0
    iget-object v0, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lpicker/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFilter()Lpicker/PickerFragment$GraphObjectFilter;
    .locals 1

    .line 347
    iget-object v0, p0, Lpicker/PickerFragment;->filter:Lpicker/PickerFragment$GraphObjectFilter;

    return-object v0
.end method

.method public getOnDataChangedListener()Lpicker/PickerFragment$OnDataChangedListener;
    .locals 1

    .line 264
    iget-object v0, p0, Lpicker/PickerFragment;->onDataChangedListener:Lpicker/PickerFragment$OnDataChangedListener;

    return-object v0
.end method

.method public getOnDoneButtonClickedListener()Lpicker/PickerFragment$OnDoneButtonClickedListener;
    .locals 1

    .line 305
    iget-object v0, p0, Lpicker/PickerFragment;->onDoneButtonClickedListener:Lpicker/PickerFragment$OnDoneButtonClickedListener;

    return-object v0
.end method

.method public getOnErrorListener()Lpicker/PickerFragment$OnErrorListener;
    .locals 1

    .line 326
    iget-object v0, p0, Lpicker/PickerFragment;->onErrorListener:Lpicker/PickerFragment$OnErrorListener;

    return-object v0
.end method

.method public getOnSelectionChangedListener()Lpicker/PickerFragment$OnSelectionChangedListener;
    .locals 1

    .line 284
    iget-object v0, p0, Lpicker/PickerFragment;->onSelectionChangedListener:Lpicker/PickerFragment$OnSelectionChangedListener;

    return-object v0
.end method

.method abstract getRequestForLoadData()Lcom/facebook/GraphRequest;
.end method

.method getSelectedGraphObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    iget-object v1, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {v1}, Lpicker/PickerFragment$SelectionStrategy;->getSelectedIds()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpicker/GraphObjectAdapter;->getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShowPictures()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lpicker/PickerFragment;->showPictures:Z

    return v0
.end method

.method public getShowTitleBar()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lpicker/PickerFragment;->showTitleBar:Z

    return v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lpicker/PickerFragment;->getDefaultTitleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    .line 439
    :cond_0
    iget-object v0, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method hideActivityCircle()V
    .locals 2

    .line 596
    iget-object v0, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 599
    iget-object v0, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method layoutActivityCircle()V
    .locals 2

    .line 591
    iget-object v0, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v0}, Lpicker/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 592
    :goto_0
    iget-object v1, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lpicker/PickerFragment;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public loadData(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, v0}, Lpicker/PickerFragment;->loadData(ZLjava/util/Set;)V

    return-void
.end method

.method public loadData(ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lpicker/PickerFragment;->loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

    invoke-virtual {p1}, Lpicker/PickerFragment$LoadingStrategy;->isDataPresentOrLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 486
    :cond_0
    iput-object p2, p0, Lpicker/PickerFragment;->selectionHint:Ljava/util/Set;

    .line 487
    invoke-direct {p0}, Lpicker/PickerFragment;->clearResults()V

    .line 489
    invoke-virtual {p0}, Lpicker/PickerFragment;->getRequestForLoadData()Lcom/facebook/GraphRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p0}, Lpicker/PickerFragment;->onLoadingData()V

    .line 492
    iget-object p2, p0, Lpicker/PickerFragment;->loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

    invoke-virtual {p2, p1}, Lpicker/PickerFragment$LoadingStrategy;->startLoading(Lcom/facebook/GraphRequest;)V

    :cond_1
    return-void
.end method

.method logAppEvents(Z)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    new-instance v0, Lpicker/PickerFragment$4;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$4;-><init>(Lpicker/PickerFragment;)V

    iput-object v0, p0, Lpicker/PickerFragment;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 197
    invoke-virtual {p0, p1}, Lpicker/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lpicker/PickerFragment;->createLoadingStrategy()Lpicker/PickerFragment$LoadingStrategy;

    move-result-object v0

    iput-object v0, p0, Lpicker/PickerFragment;->loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

    .line 200
    iget-object v0, p0, Lpicker/PickerFragment;->loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

    iget-object v1, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v0, v1}, Lpicker/PickerFragment$LoadingStrategy;->attach(Lpicker/GraphObjectAdapter;)V

    .line 202
    invoke-virtual {p0}, Lpicker/PickerFragment;->createSelectionStrategy()Lpicker/PickerFragment$SelectionStrategy;

    move-result-object v0

    iput-object v0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    .line 203
    iget-object v0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lpicker/PickerFragment$SelectionStrategy;->readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 206
    iget-boolean v0, p0, Lpicker/PickerFragment;->showTitleBar:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lpicker/PickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lpicker/PickerFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    .line 211
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p0}, Lpicker/PickerFragment;->displayActivityCircle()V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lpicker/PickerFragment;->hideActivityCircle()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lpicker/PickerFragment;->createAdapter()Lpicker/PickerFragment$PickerFragmentAdapter;

    move-result-object p1

    iput-object p1, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    .line 125
    iget-object p1, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    new-instance v0, Lpicker/PickerFragment$1;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$1;-><init>(Lpicker/PickerFragment;)V

    invoke-virtual {p1, v0}, Lpicker/GraphObjectAdapter;->setFilter(Lpicker/GraphObjectAdapter$Filter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 156
    iget p3, p0, Lpicker/PickerFragment;->layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 158
    sget p2, Lplugin/facebook/v4a/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    .line 159
    iget-object p2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    new-instance p3, Lpicker/PickerFragment$2;

    invoke-direct {p3, p0}, Lpicker/PickerFragment$2;-><init>(Lpicker/PickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object p2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    new-instance p3, Lpicker/PickerFragment$3;

    invoke-direct {p3, p0}, Lpicker/PickerFragment$3;-><init>(Lpicker/PickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    iget-object p2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lpicker/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    sget p2, Lplugin/facebook/v4a/R$id;->com_facebook_picker_activity_circle:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    .line 178
    invoke-virtual {p0, p1}, Lpicker/PickerFragment;->setupViews(Landroid/view/ViewGroup;)V

    .line 180
    iget-object p2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 225
    iget-object v0, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 226
    iget-object v0, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lpicker/PickerFragment;->loadingStrategy:Lpicker/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lpicker/PickerFragment$LoadingStrategy;->detach()V

    .line 229
    iget-object v0, p0, Lpicker/PickerFragment;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 136
    sget-object p3, Lplugin/facebook/v4a/R$styleable;->picker_fragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 138
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_show_pictures:I

    iget-boolean p3, p0, Lpicker/PickerFragment;->showPictures:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lpicker/PickerFragment;->setShowPictures(Z)V

    .line 139
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_extra_fields:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, ","

    .line 141
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lpicker/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 145
    :cond_0
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_show_title_bar:I

    iget-boolean p3, p0, Lpicker/PickerFragment;->showTitleBar:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lpicker/PickerFragment;->showTitleBar:Z

    .line 146
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    .line 147
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_done_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 148
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_title_bar_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lpicker/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    .line 149
    sget p2, Lplugin/facebook/v4a/R$styleable;->picker_fragment_done_button_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lpicker/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method onLoadingData()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 234
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0, p1}, Lpicker/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 237
    iget-object v0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lpicker/PickerFragment$SelectionStrategy;->saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lpicker/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lpicker/PickerFragment;->appEventsLogged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lpicker/PickerFragment;->logAppEvents(Z)V

    .line 248
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 553
    iget-boolean v0, p0, Lpicker/PickerFragment;->showPictures:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowPictures"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    iget-object v0, p0, Lpicker/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lpicker/PickerFragment;->extraFields:Ljava/util/HashSet;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.widget.PickerFragment.ExtraFields"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_0
    iget-boolean v0, p0, Lpicker/PickerFragment;->showTitleBar:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowTitleBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 558
    iget-object v0, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    const-string v1, "com.facebook.widget.PickerFragment.TitleText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    const-string v1, "com.facebook.widget.PickerFragment.DoneButtonText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0, p1}, Lpicker/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDoneButtonText(Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    return-void
.end method

.method public setExtraFields(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpicker/PickerFragment;->extraFields:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lpicker/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFilter(Lpicker/PickerFragment$GraphObjectFilter;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lpicker/PickerFragment;->filter:Lpicker/PickerFragment$GraphObjectFilter;

    return-void
.end method

.method public setOnDataChangedListener(Lpicker/PickerFragment$OnDataChangedListener;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lpicker/PickerFragment;->onDataChangedListener:Lpicker/PickerFragment$OnDataChangedListener;

    return-void
.end method

.method public setOnDoneButtonClickedListener(Lpicker/PickerFragment$OnDoneButtonClickedListener;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lpicker/PickerFragment;->onDoneButtonClickedListener:Lpicker/PickerFragment$OnDoneButtonClickedListener;

    return-void
.end method

.method public setOnErrorListener(Lpicker/PickerFragment$OnErrorListener;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lpicker/PickerFragment;->onErrorListener:Lpicker/PickerFragment$OnErrorListener;

    return-void
.end method

.method public setOnSelectionChangedListener(Lpicker/PickerFragment$OnSelectionChangedListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lpicker/PickerFragment;->onSelectionChangedListener:Lpicker/PickerFragment$OnSelectionChangedListener;

    return-void
.end method

.method setSelectedGraphObjects(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    iget-object v1, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {v1, v0}, Lpicker/PickerFragment$SelectionStrategy;->isSelected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {v1, v0}, Lpicker/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method setSelectionStrategy(Lpicker/PickerFragment$SelectionStrategy;)V
    .locals 1

    .line 604
    iget-object v0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    if-eq p1, v0, :cond_0

    .line 605
    iput-object p1, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    .line 606
    iget-object p1, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1}, Lpicker/GraphObjectAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 505
    iget-boolean v0, p0, Lpicker/PickerFragment;->showPictures:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowPictures"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpicker/PickerFragment;->showPictures:Z

    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    .line 506
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpicker/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 511
    :cond_0
    iget-boolean v0, p0, Lpicker/PickerFragment;->showTitleBar:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowTitleBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpicker/PickerFragment;->showTitleBar:Z

    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    .line 512
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    iput-object v0, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lpicker/PickerFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 516
    iget-object v1, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    .line 519
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 521
    iput-object p1, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 522
    iget-object p1, p0, Lpicker/PickerFragment;->doneButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 523
    iget-object v0, p0, Lpicker/PickerFragment;->doneButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setShowPictures(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lpicker/PickerFragment;->showPictures:Z

    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0

    .line 407
    iput-boolean p1, p0, Lpicker/PickerFragment;->showTitleBar:Z

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lpicker/PickerFragment;->titleText:Ljava/lang/String;

    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method updateAdapter(Lpicker/GraphObjectCursor;)V
    .locals 7

    .line 703
    iget-object v0, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    if-eqz v0, :cond_8

    .line 715
    iget-object v0, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 716
    iget-object v2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 720
    :cond_0
    iget-object v3, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v3, v2}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {v2}, Lpicker/GraphObjectAdapter$SectionAndItem;->getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v4

    sget-object v5, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v4, v5, :cond_1

    .line 723
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 726
    :goto_0
    iget-object v5, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v5, p1}, Lpicker/GraphObjectAdapter;->changeCursor(Lpicker/GraphObjectCursor;)Z

    move-result v5

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 730
    iget-object v0, p0, Lpicker/PickerFragment;->adapter:Lpicker/GraphObjectAdapter;

    iget-object v6, v2, Lpicker/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    iget-object v2, v2, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v6, v2}, Lpicker/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 732
    iget-object v2, p0, Lpicker/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2
    if-eqz v5, :cond_3

    .line 736
    iget-object v0, p0, Lpicker/PickerFragment;->onDataChangedListener:Lpicker/PickerFragment$OnDataChangedListener;

    if-eqz v0, :cond_3

    .line 737
    invoke-interface {v0, p0}, Lpicker/PickerFragment$OnDataChangedListener;->onDataChanged(Lpicker/PickerFragment;)V

    .line 739
    :cond_3
    iget-object v0, p0, Lpicker/PickerFragment;->selectionHint:Ljava/util/Set;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 740
    invoke-virtual {p1}, Lpicker/GraphObjectCursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 742
    :goto_1
    invoke-virtual {p1}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 743
    invoke-virtual {p1, v3}, Lpicker/GraphObjectCursor;->moveToPosition(I)Z

    .line 744
    invoke-virtual {p1}, Lpicker/GraphObjectCursor;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 748
    :cond_4
    iget-object v4, p0, Lpicker/PickerFragment;->selectionHint:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 749
    iget-object v0, p0, Lpicker/PickerFragment;->selectionStrategy:Lpicker/PickerFragment$SelectionStrategy;

    invoke-virtual {v0, v2}, Lpicker/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lpicker/PickerFragment;->selectionHint:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 753
    :cond_5
    iget-object v2, p0, Lpicker/PickerFragment;->selectionHint:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    :cond_7
    :goto_3
    iget-object p1, p0, Lpicker/PickerFragment;->onSelectionChangedListener:Lpicker/PickerFragment$OnSelectionChangedListener;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    .line 758
    invoke-interface {p1, p0}, Lpicker/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lpicker/PickerFragment;)V

    :cond_8
    return-void
.end method
