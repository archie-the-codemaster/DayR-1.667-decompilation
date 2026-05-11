.class Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

.field final synthetic val$finalCameraShotDestinationFile:Ljava/io/File;

.field final synthetic val$finalCameraShotSourceFile:Ljava/io/File;

.field final synthetic val$finalFileSize:J


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;Ljava/io/File;Ljava/io/File;J)V
    .locals 0

    .line 3151
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalCameraShotSourceFile:Ljava/io/File;

    iput-object p3, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalCameraShotDestinationFile:Ljava/io/File;

    iput-wide p4, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalFileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3154
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3156
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 3157
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalCameraShotSourceFile:Ljava/io/File;

    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalCameraShotDestinationFile:Ljava/io/File;

    invoke-virtual {v1, v0, v2}, Lcom/ansca/corona/storage/FileServices;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 3159
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalCameraShotDestinationFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity;->access$500(Ljava/lang/String;)I

    move-result v1

    .line 3160
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    invoke-static {v2}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->access$800(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    invoke-static {v2}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->access$900(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 3162
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->access$800(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    .line 3163
    invoke-static {v2}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->access$900(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalCameraShotDestinationFile:Ljava/io/File;

    .line 3164
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->val$finalFileSize:J

    .line 3163
    invoke-interface {v2, v3, v1, v4, v5}, Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;->generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object v1

    .line 3162
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 3167
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->access$800(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->access$900(Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;)Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;->generateEvent(Ljava/lang/String;)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    :goto_0
    return-void
.end method
