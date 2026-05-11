.class Lcom/ansca/corona/VideoActivity$ScreenEventHandler;
.super Landroid/content/BroadcastReceiver;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenEventHandler"
.end annotation


# instance fields
.field private fVideoActivity:Lcom/ansca/corona/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/VideoActivity;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    if-eqz p1, :cond_0

    .line 277
    iput-object p1, p0, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;->fVideoActivity:Lcom/ansca/corona/VideoActivity;

    .line 280
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;->fVideoActivity:Lcom/ansca/corona/VideoActivity;

    invoke-virtual {v0, p0, p1}, Lcom/ansca/corona/VideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;->fVideoActivity:Lcom/ansca/corona/VideoActivity;

    invoke-virtual {v0, p0}, Lcom/ansca/corona/VideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 314
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 316
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;->fVideoActivity:Lcom/ansca/corona/VideoActivity;

    invoke-static {p1}, Lcom/ansca/corona/VideoActivity;->access$200(Lcom/ansca/corona/VideoActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
