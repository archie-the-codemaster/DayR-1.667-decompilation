.class Lcom/ansca/corona/Controller$16;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showVideoPickerWindow(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$maxTime:I

.field final synthetic val$quality:I

.field final synthetic val$videoSourceType:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;III)V
    .locals 0

    .line 1645
    iput-object p1, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    iput p2, p0, Lcom/ansca/corona/Controller$16;->val$videoSourceType:I

    iput p3, p0, Lcom/ansca/corona/Controller$16;->val$maxTime:I

    iput p4, p0, Lcom/ansca/corona/Controller$16;->val$quality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1647
    monitor-enter p0

    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1650
    monitor-exit p0

    return-void

    .line 1654
    :cond_0
    iget v0, p0, Lcom/ansca/corona/Controller$16;->val$videoSourceType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const-string v0, "Corona"

    const-string v1, "The given video source is not supported."

    .line 1681
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    monitor-exit p0

    return-void

    .line 1661
    :cond_1
    iget v0, p0, Lcom/ansca/corona/Controller$16;->val$maxTime:I

    .line 1662
    iget v2, p0, Lcom/ansca/corona/Controller$16;->val$quality:I

    if-ge v0, v1, :cond_2

    const v0, 0x7fffffff

    :cond_2
    if-eqz v2, :cond_3

    if-ne v2, v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 1677
    :cond_4
    iget-object v2, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ansca/corona/listeners/CoronaShowApiListener;->showCameraWindowForVideo(II)V

    goto :goto_0

    .line 1657
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ansca/corona/listeners/CoronaShowApiListener;->showSelectVideoWindow()V

    .line 1684
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
