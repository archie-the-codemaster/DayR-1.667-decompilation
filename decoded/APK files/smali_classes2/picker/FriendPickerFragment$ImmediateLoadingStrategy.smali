.class Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;
.super Lpicker/PickerFragment$LoadingStrategy;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/FriendPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImmediateLoadingStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/FriendPickerFragment;


# direct methods
.method private constructor <init>(Lpicker/FriendPickerFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lpicker/FriendPickerFragment;

    invoke-direct {p0, p1}, Lpicker/PickerFragment$LoadingStrategy;-><init>(Lpicker/PickerFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lpicker/FriendPickerFragment;Lpicker/FriendPickerFragment$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lpicker/FriendPickerFragment;)V

    return-void
.end method

.method private followNextLink()V
    .locals 1

    .line 340
    iget-object v0, p0, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lpicker/FriendPickerFragment;

    invoke-virtual {v0}, Lpicker/FriendPickerFragment;->displayActivityCircle()V

    .line 342
    iget-object v0, p0, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lpicker/GraphObjectPagingLoader;->followNextLink()V

    return-void
.end method


# virtual methods
.method protected onLoadFinished(Lpicker/GraphObjectPagingLoader;Lpicker/GraphObjectCursor;)V
    .locals 0

    .line 321
    invoke-super {p0, p1, p2}, Lpicker/PickerFragment$LoadingStrategy;->onLoadFinished(Lpicker/GraphObjectPagingLoader;Lpicker/GraphObjectCursor;)V

    if-eqz p2, :cond_2

    .line 325
    invoke-virtual {p1}, Lpicker/GraphObjectPagingLoader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p2}, Lpicker/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    invoke-direct {p0}, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;->followNextLink()V

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lpicker/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lpicker/FriendPickerFragment;

    invoke-virtual {p1}, Lpicker/FriendPickerFragment;->hideActivityCircle()V

    :cond_2
    :goto_0
    return-void
.end method
