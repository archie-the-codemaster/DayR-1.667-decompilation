.class public Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
.super Lcom/ansca/corona/notifications/NotificationSettings;
.source "ScheduledNotificationSettings.java"


# instance fields
.field private fEndTime:Ljava/util/Date;

.field private fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;-><init>(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    return-void
.end method

.method private constructor <init>(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/ansca/corona/notifications/NotificationSettings;-><init>()V

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 37
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 38
    iput-object p1, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    return-void
.end method

.method public static from(Landroid/content/Context;Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .locals 0

    .line 126
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->from(Landroid/content/Context;Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p0

    .line 127
    new-instance p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-direct {p1, p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;-><init>(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->clone()Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .line 48
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 49
    iget-object v1, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

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
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->clone()Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setId(I)V

    .line 65
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 66
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v0

    return v0
.end method

.method public getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    return-object v0
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setId(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    return-void
.end method
