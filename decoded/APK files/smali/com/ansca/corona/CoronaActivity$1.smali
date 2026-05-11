.class Lcom/ansca/corona/CoronaActivity$1;
.super Landroid/database/ContentObserver;
.source "CoronaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->initializeOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;Landroid/os/Handler;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 500
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 501
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    .line 502
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    .line 501
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->restoreInitialOrientationSetting()V

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {p1}, Lcom/ansca/corona/CoronaActivity;->access$000(Lcom/ansca/corona/CoronaActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 510
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {p1}, Lcom/ansca/corona/CoronaActivity;->access$100(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    .line 511
    invoke-static {p1}, Lcom/ansca/corona/CoronaActivity;->access$100(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/SystemMonitor;->isScreenUnlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 515
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->lockCurrentOrientation()V

    goto :goto_0

    .line 519
    :cond_1
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->isAtPortraitOrientation()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->supportsPortraitOrientation()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    .line 520
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->isAtLandscapeOrientation()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->supportsLandscapeOrientation()Z

    move-result p1

    if-nez p1, :cond_4

    .line 522
    :cond_3
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getLoggedOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->lockOrientation(I)V

    goto :goto_0

    .line 525
    :cond_4
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$1;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->lockCurrentOrientation()V

    :cond_5
    :goto_0
    return-void
.end method
