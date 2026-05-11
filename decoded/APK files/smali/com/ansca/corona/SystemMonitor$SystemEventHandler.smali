.class Lcom/ansca/corona/SystemMonitor$SystemEventHandler;
.super Landroid/content/BroadcastReceiver;
.source "SystemMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/SystemMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemEventHandler"
.end annotation


# instance fields
.field private fMonitor:Lcom/ansca/corona/SystemMonitor;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/SystemMonitor;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    if-eqz p1, :cond_0

    .line 235
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    .line 238
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {v0}, Lcom/ansca/corona/SystemMonitor;->access$100(Lcom/ansca/corona/SystemMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {v0}, Lcom/ansca/corona/SystemMonitor;->access$100(Lcom/ansca/corona/SystemMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    iget-object p2, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {p2}, Lcom/ansca/corona/SystemMonitor;->access$200(Lcom/ansca/corona/SystemMonitor;)Lcom/ansca/corona/CoronaApiListener;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 275
    iget-object p1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {p1, v2}, Lcom/ansca/corona/SystemMonitor;->access$302(Lcom/ansca/corona/SystemMonitor;Z)Z

    if-eqz p2, :cond_5

    .line 277
    invoke-interface {p2, v1}, Lcom/ansca/corona/CoronaApiListener;->onScreenLockStateChanged(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object p1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {p1, v1}, Lcom/ansca/corona/SystemMonitor;->access$302(Lcom/ansca/corona/SystemMonitor;Z)Z

    if-eqz p2, :cond_5

    .line 283
    iget-object p1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {p1}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/ansca/corona/CoronaApiListener;->onScreenLockStateChanged(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    .line 288
    invoke-interface {p2, v2}, Lcom/ansca/corona/CoronaApiListener;->onScreenLockStateChanged(Z)V

    goto :goto_0

    :cond_4
    const-string p2, "android.media.RINGER_MODE_CHANGED"

    .line 291
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    iget-object p1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {p1}, Lcom/ansca/corona/SystemMonitor;->isSilentModeEnabled()Z

    :cond_5
    :goto_0
    return-void
.end method
