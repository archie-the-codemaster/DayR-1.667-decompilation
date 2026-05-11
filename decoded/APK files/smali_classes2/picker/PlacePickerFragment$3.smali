.class Lpicker/PlacePickerFragment$3;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PlacePickerFragment;->onSearchTextTimerTriggered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PlacePickerFragment;


# direct methods
.method constructor <init>(Lpicker/PlacePickerFragment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lpicker/PlacePickerFragment$3;->this$0:Lpicker/PlacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Error loading data : %s"

    const-string v1, "PlacePickerFragment"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 447
    :try_start_0
    iget-object v4, p0, Lpicker/PlacePickerFragment$3;->this$0:Lpicker/PlacePickerFragment;

    invoke-virtual {v4, v3}, Lpicker/PlacePickerFragment;->loadData(Z)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 451
    :try_start_1
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    iget-object v4, p0, Lpicker/PlacePickerFragment$3;->this$0:Lpicker/PlacePickerFragment;

    invoke-virtual {v4}, Lpicker/PlacePickerFragment;->getOnErrorListener()Lpicker/PickerFragment$OnErrorListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 456
    iget-object v0, p0, Lpicker/PlacePickerFragment$3;->this$0:Lpicker/PlacePickerFragment;

    invoke-interface {v4, v0, v5}, Lpicker/PickerFragment$OnErrorListener;->onError(Lpicker/PickerFragment;Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 458
    :cond_0
    sget-object v4, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v4, v1, v0, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 461
    :goto_0
    throw v0

    :catch_1
    move-exception v4

    .line 454
    iget-object v5, p0, Lpicker/PlacePickerFragment$3;->this$0:Lpicker/PlacePickerFragment;

    invoke-virtual {v5}, Lpicker/PlacePickerFragment;->getOnErrorListener()Lpicker/PickerFragment$OnErrorListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 456
    iget-object v0, p0, Lpicker/PlacePickerFragment$3;->this$0:Lpicker/PlacePickerFragment;

    invoke-interface {v5, v0, v4}, Lpicker/PickerFragment$OnErrorListener;->onError(Lpicker/PickerFragment;Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 458
    :cond_1
    sget-object v5, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v5, v1, v0, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
