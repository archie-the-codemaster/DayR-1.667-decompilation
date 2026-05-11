.class Lpicker/PickerFragment$LoadingStrategy$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PickerFragment$LoadingStrategy;->attach(Lpicker/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Lpicker/GraphObjectCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lpicker/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lpicker/PickerFragment$LoadingStrategy;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lpicker/PickerFragment$LoadingStrategy$1;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Lpicker/GraphObjectCursor;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy$1;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    invoke-virtual {p1}, Lpicker/PickerFragment$LoadingStrategy;->onCreateLoader()Lpicker/GraphObjectPagingLoader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 850
    check-cast p2, Lpicker/GraphObjectCursor;

    invoke-virtual {p0, p1, p2}, Lpicker/PickerFragment$LoadingStrategy$1;->onLoadFinished(Landroid/support/v4/content/Loader;Lpicker/GraphObjectCursor;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lpicker/GraphObjectCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Lpicker/GraphObjectCursor;",
            ">;",
            "Lpicker/GraphObjectCursor;",
            ")V"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy$1;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    if-ne p1, v0, :cond_0

    .line 862
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy$1;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    check-cast p1, Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0, p1, p2}, Lpicker/PickerFragment$LoadingStrategy;->onLoadFinished(Lpicker/GraphObjectPagingLoader;Lpicker/GraphObjectCursor;)V

    return-void

    .line 860
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Received callback for unknown loader."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Lpicker/GraphObjectCursor;",
            ">;)V"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy$1;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    if-ne p1, v0, :cond_0

    .line 870
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy$1;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    check-cast p1, Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0, p1}, Lpicker/PickerFragment$LoadingStrategy;->onLoadReset(Lpicker/GraphObjectPagingLoader;)V

    return-void

    .line 868
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Received callback for unknown loader."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
