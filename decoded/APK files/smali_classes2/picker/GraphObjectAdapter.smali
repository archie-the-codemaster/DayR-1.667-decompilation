.class Lpicker/GraphObjectAdapter;
.super Landroid/widget/BaseAdapter;
.source "GraphObjectAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpicker/GraphObjectAdapter$Filter;,
        Lpicker/GraphObjectAdapter$SectionAndItem;,
        Lpicker/GraphObjectAdapter$OnErrorListener;,
        Lpicker/GraphObjectAdapter$DataNeededListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTIVITY_CIRCLE_VIEW_TYPE:I = 0x2

.field private static final DISPLAY_SECTIONS_THRESHOLD:I = 0x1

.field private static final GRAPH_OBJECT_VIEW_TYPE:I = 0x1

.field private static final HEADER_VIEW_TYPE:I = 0x0

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MAX_PREFETCHED_PICTURES:I = 0x14

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Lpicker/GraphObjectCursor;

.field private dataNeededListener:Lpicker/GraphObjectAdapter$DataNeededListener;

.field private displaySections:Z

.field private filter:Lpicker/GraphObjectAdapter$Filter;

.field private graphObjectsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private graphObjectsBySection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupByField:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private onErrorListener:Lpicker/GraphObjectAdapter$OnErrorListener;

.field private final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedPictureCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedProfilePictureIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showCheckbox:Z

.field private showPicture:Z

.field private sortFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    .line 111
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->context:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lpicker/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lpicker/GraphObjectAdapter;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lpicker/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lpicker/GraphObjectAdapter;->compareGraphObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lpicker/GraphObjectAdapter;Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lpicker/GraphObjectAdapter;->processImageResponse(Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private callOnErrorListener(Ljava/lang/Exception;)V
    .locals 1

    .line 769
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->onErrorListener:Lpicker/GraphObjectAdapter$OnErrorListener;

    if-eqz v0, :cond_1

    .line 770
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 773
    :cond_0
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->onErrorListener:Lpicker/GraphObjectAdapter$OnErrorListener;

    check-cast p1, Lcom/facebook/FacebookException;

    invoke-interface {v0, p0, p1}, Lpicker/GraphObjectAdapter$OnErrorListener;->onError(Lpicker/GraphObjectAdapter;Lcom/facebook/FacebookException;)V

    :cond_1
    return-void
.end method

.method private static compareGraphObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/text/Collator;",
            ")I"
        }
    .end annotation

    .line 806
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p3, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private downloadProfilePicture(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 741
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    if-nez v0, :cond_3

    .line 745
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 746
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->getDefaultPicture()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 749
    :cond_3
    new-instance v0, Lcom/facebook/internal/ImageRequest$Builder;

    iget-object v1, p0, Lpicker/GraphObjectAdapter;->context:Landroid/content/Context;

    .line 750
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 752
    invoke-virtual {v0, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p2

    new-instance v0, Lpicker/GraphObjectAdapter$2;

    invoke-direct {v0, p0, p1, p3}, Lpicker/GraphObjectAdapter$2;-><init>(Lpicker/GraphObjectAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 753
    invoke-virtual {p2, v0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p2

    .line 761
    invoke-virtual {p2}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object p2

    .line 762
    iget-object p3, p0, Lpicker/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-static {p2}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    :cond_4
    return-void
.end method

.method private getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 309
    iget-object p1, p0, Lpicker/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget p2, Lplugin/facebook/v4a/R$layout;->picker_activity_circle_row:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 311
    :cond_0
    sget p2, Lplugin/facebook/v4a/R$id;->com_facebook_picker_row_activity_circle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method private processImageResponse(Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 778
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0}, Lpicker/GraphObjectAdapter;->callOnErrorListener(Ljava/lang/Exception;)V

    :cond_0
    if-nez p3, :cond_2

    .line 785
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 787
    iget-object p3, p0, Lpicker/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    const/16 v0, 0x14

    if-lt p3, v0, :cond_1

    .line 789
    iget-object p3, p0, Lpicker/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_1
    iget-object p3, p0, Lpicker/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 795
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object p2

    .line 796
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    .line 798
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 799
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private rebuildSections()V
    .locals 6

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    .line 450
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 455
    :cond_0
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    invoke-virtual {v1}, Lpicker/GraphObjectCursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 457
    :cond_1
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    invoke-virtual {v2}, Lpicker/GraphObjectCursor;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 459
    invoke-virtual {p0, v2}, Lpicker/GraphObjectAdapter;->filterIncludesItem(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 465
    invoke-virtual {p0, v2}, Lpicker/GraphObjectAdapter;->getSectionKeyOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 466
    iget-object v4, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 467
    iget-object v4, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v4, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_3
    iget-object v4, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 471
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v3, p0, Lpicker/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lpicker/GraphObjectAdapter;->getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_0
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    invoke-virtual {v2}, Lpicker/GraphObjectCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->sortFields:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 477
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    .line 478
    iget-object v3, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 479
    new-instance v5, Lpicker/GraphObjectAdapter$1;

    invoke-direct {v5, p0, v2}, Lpicker/GraphObjectAdapter$1;-><init>(Lpicker/GraphObjectAdapter;Ljava/text/Collator;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 488
    :cond_4
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    if-le v1, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    :cond_6
    :goto_2
    return-void
.end method

.method private shouldShowActivityCircleCell()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpicker/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpicker/GraphObjectAdapter;->dataNeededListener:Lpicker/GraphObjectAdapter$DataNeededListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    return v0
.end method

.method public changeCursor(Lpicker/GraphObjectCursor;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lpicker/GraphObjectCursor;->close()V

    .line 174
    :cond_1
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    .line 176
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->rebuildAndNotify()V

    const/4 p1, 0x1

    return p1
.end method

.method protected createGraphObjectView(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 4

    .line 326
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getGraphObjectRowLayoutId(Lorg/json/JSONObject;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 328
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_checkbox_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 334
    invoke-virtual {p0, v0, v2}, Lpicker/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    .line 338
    :cond_1
    :goto_0
    sget v0, Lplugin/facebook/v4a/R$id;->com_facebook_picker_profile_pic_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 339
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->getShowPicture()Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 343
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p1
.end method

.method filterIncludesItem(Lorg/json/JSONObject;)Z
    .locals 1

    .line 405
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->filter:Lpicker/GraphObjectAdapter$Filter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lpicker/GraphObjectAdapter$Filter;->includeItem(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getCount()I
    .locals 3

    .line 584
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 590
    :cond_0
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 591
    :cond_1
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 592
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 596
    :cond_2
    invoke-direct {p0}, Lpicker/GraphObjectAdapter;->shouldShowActivityCircleCell()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    return v1
.end method

.method public getCursor()Lpicker/GraphObjectCursor;
    .locals 1

    .line 164
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->cursor:Lpicker/GraphObjectCursor;

    return-object v0
.end method

.method public getDataNeededListener()Lpicker/GraphObjectAdapter$DataNeededListener;
    .locals 1

    .line 148
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->dataNeededListener:Lpicker/GraphObjectAdapter$DataNeededListener;

    return-object v0
.end method

.method protected getDefaultPicture()I
    .locals 1

    .line 322
    sget v0, Lplugin/facebook/v4a/R$drawable;->profile_default_icon:I

    return v0
.end method

.method getFilter()Lpicker/GraphObjectAdapter$Filter;
    .locals 1

    .line 409
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->filter:Lpicker/GraphObjectAdapter$Filter;

    return-object v0
.end method

.method protected getGraphObjectRowLayoutId(Lorg/json/JSONObject;)I
    .locals 0

    .line 318
    sget p1, Lplugin/facebook/v4a/R$layout;->picker_list_row:I

    return p1
.end method

.method protected getGraphObjectView(Lorg/json/JSONObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->createGraphObjectView(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object p2

    .line 301
    :cond_0
    invoke-virtual {p0, p2, p1}, Lpicker/GraphObjectAdapter;->populateGraphObjectView(Landroid/view/View;Lorg/json/JSONObject;)V

    return-object p2
.end method

.method public getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 715
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 717
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 718
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getGroupByField()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    return-object v0
.end method

.method getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 397
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 401
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Received an object without an ID."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 621
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    .line 622
    invoke-virtual {p1}, Lpicker/GraphObjectAdapter$SectionAndItem;->getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v0

    sget-object v1, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 630
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 632
    iget-object p1, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 635
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 651
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    .line 652
    sget-object v0, Lpicker/GraphObjectAdapter$3;->$SwitchMap$picker$GraphObjectAdapter$SectionAndItem$Type:[I

    invoke-virtual {p1}, Lpicker/GraphObjectAdapter$SectionAndItem;->getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object p1

    invoke-virtual {p1}, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v1

    .line 660
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Unexpected type of section and item."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getOnErrorListener()Lpicker/GraphObjectAdapter$OnErrorListener;
    .locals 1

    .line 156
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->onErrorListener:Lpicker/GraphObjectAdapter$OnErrorListener;

    return-object v0
.end method

.method getPictureFieldSpecifier()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Lpicker/GraphObjectAdapter;->createGraphObjectView(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v1

    .line 427
    sget v2, Lplugin/facebook/v4a/R$id;->com_facebook_picker_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-object v0

    .line 433
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 434
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "picture.height(%d).width(%d)"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPictureUriOfGraphObject(Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 2

    const-string v0, "picture"

    .line 268
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 269
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 272
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "url"

    .line 273
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 277
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method getPosition(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 5

    .line 546
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 547
    iget-boolean v4, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 550
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 554
    :cond_1
    iget-object v4, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, -0x1

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-nez p2, :cond_4

    .line 563
    iget-boolean p1, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    sub-int/2addr v2, p1

    return v2

    .line 567
    :cond_4
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 568
    invoke-static {v1, p2}, Lcom/facebook/internal/Utility;->hasSameId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    .line 694
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 696
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 697
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lpicker/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;
    .locals 5

    .line 494
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 500
    :cond_0
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    if-nez v0, :cond_2

    .line 501
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-ltz p1, :cond_1

    .line 503
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 504
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_1

    .line 509
    :cond_1
    new-instance p1, Lpicker/GraphObjectAdapter$SectionAndItem;

    invoke-direct {p1, v1, v1}, Lpicker/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    .line 514
    :cond_2
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    if-nez p1, :cond_3

    goto :goto_1

    .line 521
    :cond_3
    iget-object p1, p0, Lpicker/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 522
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 525
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_1

    .line 529
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int p1, v3, p1

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 534
    new-instance p1, Lpicker/GraphObjectAdapter$SectionAndItem;

    invoke-direct {p1, v2, v1}, Lpicker/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    .line 536
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .line 705
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p1}, Lpicker/GraphObjectAdapter$SectionAndItem;->getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v1, v2, :cond_0

    .line 708
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    iget-object p1, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 283
    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_0

    .line 286
    iget-object p2, p0, Lpicker/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lplugin/facebook/v4a/R$layout;->picker_list_section_header:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 289
    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method protected getSectionKeyOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 248
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 251
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 685
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->displaySections:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getShowCheckbox()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->showCheckbox:Z

    return v0
.end method

.method public getShowPicture()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lpicker/GraphObjectAdapter;->showPicture:Z

    return v0
.end method

.method public getSortFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTitleOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "name"

    .line 259
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 666
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    .line 668
    sget-object v0, Lpicker/GraphObjectAdapter$3;->$SwitchMap$picker$GraphObjectAdapter$SectionAndItem$Type:[I

    invoke-virtual {p1}, Lpicker/GraphObjectAdapter$SectionAndItem;->getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 676
    iget-object p1, p0, Lpicker/GraphObjectAdapter;->dataNeededListener:Lpicker/GraphObjectAdapter$DataNeededListener;

    invoke-interface {p1}, Lpicker/GraphObjectAdapter$DataNeededListener;->onDataNeeded()V

    .line 677
    invoke-direct {p0, p2, p3}, Lpicker/GraphObjectAdapter;->getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 679
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Unexpected type of section and item."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 672
    :cond_1
    iget-object p1, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lpicker/GraphObjectAdapter;->getGraphObjectView(Lorg/json/JSONObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 670
    :cond_2
    iget-object p1, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lpicker/GraphObjectAdapter;->getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 615
    invoke-virtual {p0, p1}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    .line 616
    invoke-virtual {p1}, Lpicker/GraphObjectAdapter$SectionAndItem;->getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object p1

    sget-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected populateGraphObjectView(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 4

    .line 350
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getTitleOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 354
    sget v2, Lplugin/facebook/v4a/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 356
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 359
    :cond_0
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getSubTitleOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    sget v2, Lplugin/facebook/v4a/R$id;->picker_subtitle:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 363
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v1, 0x0

    .line 364
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 366
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    sget v1, Lplugin/facebook/v4a/R$id;->com_facebook_picker_checkbox:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 372
    invoke-virtual {p0, v0}, Lpicker/GraphObjectAdapter;->isGraphObjectSelected(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lpicker/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    .line 375
    :cond_3
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->getShowPicture()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getPictureUriOfGraphObject(Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 379
    sget v1, Lplugin/facebook/v4a/R$id;->com_facebook_picker_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 382
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    iget-object p2, p0, Lpicker/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/internal/ImageResponse;

    .line 384
    invoke-virtual {p2}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    invoke-virtual {p2}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 387
    :cond_4
    invoke-direct {p0, v0, p2, p1}, Lpicker/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public prioritizeViewRange(III)V
    .locals 4

    if-lt p2, p1, :cond_8

    .line 186
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    move v0, p2

    :goto_0
    if-ltz v0, :cond_2

    .line 201
    invoke-virtual {p0, v0}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object v1

    .line 202
    iget-object v2, v1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 203
    iget-object v1, v1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lpicker/GraphObjectAdapter;->getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lpicker/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/ImageRequest;

    if-eqz v1, :cond_1

    .line 206
    invoke-static {v1}, Lcom/facebook/internal/ImageDownloader;->prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sub-int v1, p1, p3

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p3, p2

    .line 214
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, p1, :cond_4

    .line 218
    invoke-virtual {p0, v0}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object v2

    .line 219
    iget-object v3, v2, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    .line 220
    iget-object v2, v2, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p3, :cond_6

    .line 224
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getSectionAndItem(I)Lpicker/GraphObjectAdapter$SectionAndItem;

    move-result-object p1

    .line 225
    iget-object v0, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 226
    iget-object p1, p1, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_2

    .line 229
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 230
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getPictureUriOfGraphObject(Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object p3

    .line 231
    invoke-virtual {p0, p2}, Lpicker/GraphObjectAdapter;->getIdOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 235
    iget-object v0, p0, Lpicker/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    iget-object v1, p0, Lpicker/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p2, p3, v0}, Lpicker/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public rebuildAndNotify()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lpicker/GraphObjectAdapter;->rebuildSections()V

    .line 182
    invoke-virtual {p0}, Lpicker/GraphObjectAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDataNeededListener(Lpicker/GraphObjectAdapter$DataNeededListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->dataNeededListener:Lpicker/GraphObjectAdapter$DataNeededListener;

    return-void
.end method

.method setFilter(Lpicker/GraphObjectAdapter$Filter;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->filter:Lpicker/GraphObjectAdapter$Filter;

    return-void
.end method

.method public setGroupByField(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    return-void
.end method

.method public setOnErrorListener(Lpicker/GraphObjectAdapter$OnErrorListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->onErrorListener:Lpicker/GraphObjectAdapter$OnErrorListener;

    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lpicker/GraphObjectAdapter;->showCheckbox:Z

    return-void
.end method

.method public setShowPicture(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lpicker/GraphObjectAdapter;->showPicture:Z

    return-void
.end method

.method public setSortFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lpicker/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-void
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 0

    return-void
.end method
