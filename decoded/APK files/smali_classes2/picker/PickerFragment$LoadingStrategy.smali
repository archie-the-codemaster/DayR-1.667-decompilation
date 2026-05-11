.class abstract Lpicker/PickerFragment$LoadingStrategy;
.super Ljava/lang/Object;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoadingStrategy"
.end annotation


# static fields
.field protected static final CACHED_RESULT_REFRESH_DELAY:I = 0x7d0


# instance fields
.field protected adapter:Lpicker/GraphObjectAdapter;

.field protected loader:Lpicker/GraphObjectPagingLoader;

.field final synthetic this$0:Lpicker/PickerFragment;


# direct methods
.method constructor <init>(Lpicker/PickerFragment;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lpicker/GraphObjectAdapter;)V
    .locals 4

    .line 849
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-virtual {v0}, Lpicker/PickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lpicker/PickerFragment$LoadingStrategy$1;

    invoke-direct {v1, p0}, Lpicker/PickerFragment$LoadingStrategy$1;-><init>(Lpicker/PickerFragment$LoadingStrategy;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lpicker/GraphObjectPagingLoader;

    iput-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    .line 874
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    new-instance v1, Lpicker/PickerFragment$LoadingStrategy$2;

    invoke-direct {v1, p0}, Lpicker/PickerFragment$LoadingStrategy$2;-><init>(Lpicker/PickerFragment$LoadingStrategy;)V

    invoke-virtual {v0, v1}, Lpicker/GraphObjectPagingLoader;->setOnErrorListener(Lpicker/GraphObjectPagingLoader$OnErrorListener;)V

    .line 884
    iput-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    .line 886
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lpicker/GraphObjectPagingLoader;->getCursor()Lpicker/GraphObjectCursor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpicker/GraphObjectAdapter;->changeCursor(Lpicker/GraphObjectCursor;)Z

    .line 887
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    new-instance v0, Lpicker/PickerFragment$LoadingStrategy$3;

    invoke-direct {v0, p0}, Lpicker/PickerFragment$LoadingStrategy$3;-><init>(Lpicker/PickerFragment$LoadingStrategy;)V

    invoke-virtual {p1, v0}, Lpicker/GraphObjectAdapter;->setOnErrorListener(Lpicker/GraphObjectAdapter$OnErrorListener;)V

    return-void
.end method

.method public clearResults()V
    .locals 1

    .line 907
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lpicker/GraphObjectPagingLoader;->clearResults()V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 2

    .line 898
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpicker/GraphObjectAdapter;->setDataNeededListener(Lpicker/GraphObjectAdapter$DataNeededListener;)V

    .line 899
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v0, v1}, Lpicker/GraphObjectAdapter;->setOnErrorListener(Lpicker/GraphObjectAdapter$OnErrorListener;)V

    .line 900
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0, v1}, Lpicker/GraphObjectPagingLoader;->setOnErrorListener(Lpicker/GraphObjectPagingLoader$OnErrorListener;)V

    .line 902
    iput-object v1, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    .line 903
    iput-object v1, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    return-void
.end method

.method public isDataPresentOrLoading()Z
    .locals 1

    .line 920
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    invoke-virtual {v0}, Lpicker/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lpicker/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onCreateLoader()Lpicker/GraphObjectPagingLoader;
    .locals 2

    .line 924
    new-instance v0, Lpicker/GraphObjectPagingLoader;

    iget-object v1, p0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-virtual {v1}, Lpicker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lpicker/GraphObjectPagingLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLoadFinished(Lpicker/GraphObjectPagingLoader;Lpicker/GraphObjectCursor;)V
    .locals 0

    .line 936
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-virtual {p1, p2}, Lpicker/PickerFragment;->updateAdapter(Lpicker/GraphObjectCursor;)V

    return-void
.end method

.method protected onLoadReset(Lpicker/GraphObjectPagingLoader;)V
    .locals 1

    .line 932
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->adapter:Lpicker/GraphObjectAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpicker/GraphObjectAdapter;->changeCursor(Lpicker/GraphObjectCursor;)Z

    return-void
.end method

.method protected onStartLoading(Lpicker/GraphObjectPagingLoader;Lcom/facebook/GraphRequest;)V
    .locals 0

    .line 928
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-virtual {p1}, Lpicker/PickerFragment;->displayActivityCircle()V

    return-void
.end method

.method public startLoading(Lcom/facebook/GraphRequest;)V
    .locals 1

    .line 913
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Lpicker/GraphObjectPagingLoader;->startLoading(Lcom/facebook/GraphRequest;)V

    .line 915
    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy;->loader:Lpicker/GraphObjectPagingLoader;

    invoke-virtual {p0, v0, p1}, Lpicker/PickerFragment$LoadingStrategy;->onStartLoading(Lpicker/GraphObjectPagingLoader;Lcom/facebook/GraphRequest;)V

    :cond_0
    return-void
.end method
