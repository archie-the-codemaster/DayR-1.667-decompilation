.class public Lcom/ansca/corona/notifications/NotificationSettingsCollection;
.super Ljava/lang/Object;
.source "NotificationSettingsCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ansca/corona/notifications/NotificationSettings;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getById(I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/NotificationSettings;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByIndex(I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/notifications/NotificationSettings;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(Lcom/ansca/corona/notifications/NotificationSettings;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeById(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
