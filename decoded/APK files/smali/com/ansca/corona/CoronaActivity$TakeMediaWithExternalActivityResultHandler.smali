.class Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TakeMediaWithExternalActivityResultHandler"
.end annotation


# instance fields
.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fDestinationFile:Ljava/io/File;

.field private fEventGenerator:Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

.field private fSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;)V
    .locals 1

    .line 3090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3091
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fSourceUri:Landroid/net/Uri;

    .line 3092
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fDestinationFile:Ljava/io/File;

    .line 3093
    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fEventGenerator:Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    .line 3094
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method

.method static synthetic access$800(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 3076
    iget-object p0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;
    .locals 0

    .line 3076
    iget-object p0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fEventGenerator:Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    return-object p0
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 10

    .line 3132
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    if-eqz p4, :cond_0

    .line 3135
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3136
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, ""

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    .line 3142
    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fSourceUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    const-string v3, "file"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3143
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fSourceUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3145
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 3146
    iget-object v7, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fDestinationFile:Ljava/io/File;

    if-eqz v7, :cond_2

    .line 3151
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;-><init>(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;Ljava/io/File;Ljava/io/File;J)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3172
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 3177
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    move-wide v0, v8

    goto :goto_1

    :cond_3
    if-ne p3, v2, :cond_4

    const-string p3, "content"

    .line 3180
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    .line 3181
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3182
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "_data"

    aput-object p3, p1, p2

    const/4 p3, 0x1

    const-string p4, "_size"

    aput-object p4, p1, p3

    .line 3184
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 3186
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3187
    aget-object p2, p1, p2

    invoke-interface {p4, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 3188
    invoke-interface {p4, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3191
    aget-object p1, p1, p3

    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 3192
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3194
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 3201
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fEventGenerator:Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    if-eqz p1, :cond_5

    .line 3202
    invoke-static {p2}, Lcom/ansca/corona/CoronaActivity;->access$500(Ljava/lang/String;)I

    move-result p1

    .line 3203
    iget-object p3, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p3}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p3

    iget-object p4, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fEventGenerator:Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    invoke-interface {p4, p2, p1, v0, v1}, Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;->generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_5
    return-void
.end method

.method public setDestinationFilePath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3114
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fDestinationFile:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 3115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fDestinationFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public setSourceUri(Landroid/net/Uri;)V
    .locals 0

    .line 3104
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->fSourceUri:Landroid/net/Uri;

    return-void
.end method
