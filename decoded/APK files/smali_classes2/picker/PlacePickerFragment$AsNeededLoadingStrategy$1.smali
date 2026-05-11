.class Lpicker/PlacePickerFragment$AsNeededLoadingStrategy$1;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Lpicker/GraphObjectAdapter$DataNeededListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;->attach(Lpicker/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;


# direct methods
.method constructor <init>(Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataNeeded()V
    .locals 1

    .line 482
    iget-object v0, p0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;

    iget-object v0, v0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lpicker/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;

    iget-object v0, v0, Lpicker/PlacePickerFragment$AsNeededLoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lpicker/GraphObjectPagingLoader;->followNextLink()V

    :cond_0
    return-void
.end method
