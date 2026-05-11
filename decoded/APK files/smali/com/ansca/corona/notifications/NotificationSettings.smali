.class public abstract Lcom/ansca/corona/notifications/NotificationSettings;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1

    .line 27
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/NotificationSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
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
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public abstract getId()I
.end method

.method public abstract setId(I)V
.end method
