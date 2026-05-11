.class public Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
.super Lcom/ansca/corona/notifications/NotificationSettings;
.source "StatusBarNotificationSettings.java"


# static fields
.field public static final DEFAULT_ICON_RESOURCE_NAME:Ljava/lang/String; = "corona_statusbar_icon_default"


# instance fields
.field private fBadgeNumber:I

.field private fContentText:Ljava/lang/String;

.field private fContentTitle:Ljava/lang/String;

.field private fData:Lcom/ansca/corona/CoronaData$Table;

.field private fIconResourceName:Ljava/lang/String;

.field private fId:I

.field private fIsRemovable:Z

.field private fIsSourceLocal:Z

.field private fSoundFileUri:Landroid/net/Uri;

.field private fSourceData:Lcom/ansca/corona/CoronaData;

.field private fSourceDataName:Ljava/lang/String;

.field private fSourceName:Ljava/lang/String;

.field private fTickerText:Ljava/lang/String;

.field private fTimestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/ansca/corona/notifications/NotificationSettings;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fId:I

    .line 67
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    const-string v1, ""

    .line 68
    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    const-string v2, "corona_statusbar_icon_default"

    .line 71
    iput-object v2, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    .line 72
    iput v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    .line 75
    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    .line 77
    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceDataName:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    .line 79
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    return-void
.end method

.method public static from(Landroid/content/Context;Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 5

    if-eqz p0, :cond_8

    .line 465
    new-instance v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 474
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "alert"

    .line 476
    invoke-virtual {p1, p2, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v1, -0x1

    .line 477
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "title"

    .line 483
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 484
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 487
    :cond_1
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v2, "body"

    .line 488
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 489
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 494
    :cond_2
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v2, "number"

    .line 495
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 496
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    .line 499
    :cond_3
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 501
    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v2, "sound"

    .line 504
    invoke-virtual {p1, p2, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 505
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 508
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-static {p0, v4}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 512
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    :goto_1
    invoke-virtual {v0, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    .line 516
    :cond_5
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string p0, "custom"

    .line 519
    invoke-virtual {p1, p2, p0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 520
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 521
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaData;->from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;

    move-result-object p0

    .line 522
    instance-of p2, p0, Lcom/ansca/corona/CoronaData$Table;

    if-eqz p2, :cond_6

    .line 523
    check-cast p0, Lcom/ansca/corona/CoronaData$Table;

    invoke-virtual {v0, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 526
    :cond_6
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    :cond_7
    return-object v0

    .line 461
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 3

    .line 88
    invoke-super {p0}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 89
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    .line 90
    iget-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    .line 91
    iget-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 107
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    .line 108
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    .line 112
    iget v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    iput v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    .line 113
    iget-boolean v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    iput-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    .line 114
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    .line 115
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    .line 116
    iget-boolean v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    iput-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    .line 117
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceDataName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceDataName:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    .line 119
    iget-object p1, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    return-void

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public getBadgeNumber()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    return v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/ansca/corona/CoronaData$Table;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 2

    .line 239
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    new-instance v1, Lcom/ansca/corona/storage/ResourceServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 247
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/storage/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconResourceName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fId:I

    return v0
.end method

.method public getSoundFileUri()Landroid/net/Uri;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceData()Lcom/ansca/corona/CoronaData;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    return-object v0
.end method

.method public getSourceDataName()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceDataName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTickerText()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    return v0
.end method

.method public isSourceLocal()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    return v0
.end method

.method public setBadgeNumber(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 281
    :cond_0
    iput p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/ansca/corona/CoronaData$Table;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    return-void
.end method

.method public setIconResourceName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fId:I

    return-void
.end method

.method public setRemovable(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    return-void
.end method

.method public setSoundFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    return-void
.end method

.method public setSourceData(Lcom/ansca/corona/CoronaData;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceData:Lcom/ansca/corona/CoronaData;

    return-void
.end method

.method public setSourceDataName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceDataName:Ljava/lang/String;

    return-void
.end method

.method public setSourceLocal(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    return-void
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
