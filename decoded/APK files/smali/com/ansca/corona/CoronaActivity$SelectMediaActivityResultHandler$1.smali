.class Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

.field final synthetic val$finalDestinationFile:Ljava/io/File;

.field final synthetic val$finalUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;Landroid/net/Uri;Ljava/io/File;)V
    .locals 0

    .line 2435
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalDestinationFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2439
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2446
    :cond_0
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2454
    :try_start_0
    iget-object v7, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    .line 2455
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2456
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2457
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2458
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v8, "content"

    .line 2461
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v7, :cond_2

    .line 2463
    :try_start_3
    iget-object v7, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    invoke-virtual {v7}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->getColumns()[Ljava/lang/String;

    move-result-object v7

    .line 2464
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2466
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2467
    aget-object v5, v7, v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2468
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2470
    aget-object v7, v7, v4

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2471
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2472
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2473
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v7

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :catch_1
    move-object v4, v6

    goto :goto_0

    :catch_2
    :cond_2
    move-object v4, v6

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 2478
    invoke-virtual {v1, v4}, Lcom/ansca/corona/storage/FileServices;->getExtensionFrom(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 2479
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    move-object v4, v6

    goto :goto_2

    :cond_4
    move-object v7, v6

    :cond_5
    :goto_2
    const-string v6, ""

    if-eqz v4, :cond_7

    .line 2486
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2488
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalDestinationFile:Ljava/io/File;

    if-eqz v0, :cond_6

    .line 2489
    invoke-virtual {v1, v4, v0}, Lcom/ansca/corona/storage/FileServices;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2491
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalDestinationFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 2495
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_9

    .line 2499
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->access$300(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_8

    move-object v1, v7

    .line 2504
    :cond_8
    iget-object v4, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    iget-object v5, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->val$finalDestinationFile:Ljava/io/File;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->handleContentUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2509
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->access$400(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2510
    invoke-static {v6}, Lcom/ansca/corona/CoronaActivity;->access$500(Ljava/lang/String;)I

    move-result v0

    .line 2511
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->access$400(Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    iget-object v4, p0, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;

    invoke-virtual {v4, v6, v0, v2, v3}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;->generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_a
    return-void
.end method
