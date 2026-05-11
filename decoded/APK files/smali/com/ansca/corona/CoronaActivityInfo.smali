.class public Lcom/ansca/corona/CoronaActivityInfo;
.super Ljava/lang/Object;
.source "CoronaActivityInfo.java"


# instance fields
.field private fActivity:Landroid/app/Activity;

.field private fSupportsOrientationChanges:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivityInfo;->fActivity:Landroid/app/Activity;

    return-void
.end method

.method private supportsOrientationChanges()Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivityInfo;->fActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivityInfo;->fActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hasFixedOrientation()Z
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivityInfo;->supportsOrientationChanges()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
