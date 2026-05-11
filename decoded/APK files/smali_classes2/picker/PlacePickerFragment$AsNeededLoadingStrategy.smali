.class Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;
.super Lpicker/PickerFragment$LoadingStrategy;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/PlacePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsNeededLoadingStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PlacePickerFragment;


# direct methods
.method private constructor <init>(Lpicker/PlacePickerFragment;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;->this$0:Lpicker/PlacePickerFragment;

    invoke-direct {p0, p1}, Lpicker/PickerFragment$LoadingStrategy;-><init>(Lpicker/PickerFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lpicker/PlacePickerFragment;Lpicker/PlacePickerFragment$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lpicker/PlacePickerFragment;)V

    return-void
.end method


# virtual methods
.method public attach(Lpicker/GraphObjectAdapter;)V
    .locals 1

    .line 475
    invoke-super {p0, p1}, Lpicker/PickerFragment$LoadingStrategy;->attach(Lpicker/GraphObjectAdapter;)V

    .line 477
    iget-object p1, p0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    new-instance v0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy$1;

    invoke-direct {v0, p0}, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy$1;-><init>(Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;)V

    invoke-virtual {p1, v0}, Lpicker/GraphObjectAdapter;->setDataNeededListener(Lpicker/GraphObjectAdapter$DataNeededListener;)V

    return-void
.end method

.method protected onLoadFinished(Lpicker/GraphObjectPagingLoader;Lpicker/GraphObjectCursor;)V
    .locals 0

    .line 491
    invoke-super {p0, p1, p2}, Lpicker/PickerFragment$LoadingStrategy;->onLoadFinished(Lpicker/GraphObjectPagingLoader;Lpicker/GraphObjectCursor;)V

    if-eqz p2, :cond_1

    .line 495
    invoke-virtual {p1}, Lpicker/GraphObjectPagingLoader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;->this$0:Lpicker/PlacePickerFragment;

    invoke-virtual {p1}, Lpicker/PlacePickerFragment;->hideActivityCircle()V

    :cond_1
    :goto_0
    return-void
.end method
