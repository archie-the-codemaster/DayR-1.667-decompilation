.class Lcom/ansca/corona/notifications/NotificationServices$ApiLevel19;
.super Ljava/lang/Object;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/NotificationServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarmManagerSetExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1127
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
