.class Lcom/ansca/corona/Controller$15;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showImagePickerWindow(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$destinationFilePath:Ljava/lang/String;

.field final synthetic val$imageSourceType:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;ILjava/lang/String;)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lcom/ansca/corona/Controller$15;->this$0:Lcom/ansca/corona/Controller;

    iput p2, p0, Lcom/ansca/corona/Controller$15;->val$imageSourceType:I

    iput-object p3, p0, Lcom/ansca/corona/Controller$15;->val$destinationFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1610
    monitor-enter p0

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller$15;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1613
    monitor-exit p0

    return-void

    .line 1617
    :cond_0
    iget v0, p0, Lcom/ansca/corona/Controller$15;->val$imageSourceType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const-string v0, "Corona"

    const-string v1, "The given image source is not supported."

    .line 1628
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    monitor-exit p0

    return-void

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/Controller$15;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$15;->val$destinationFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ansca/corona/listeners/CoronaShowApiListener;->showCameraWindowForImage(Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/Controller$15;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$15;->val$destinationFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ansca/corona/listeners/CoronaShowApiListener;->showSelectImageWindowUsing(Ljava/lang/String;)V

    .line 1631
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
