.class Lcom/ansca/corona/CoronaShowApiHandler;
.super Ljava/lang/Object;
.source "CoronaShowApiHandler.java"

# interfaces
.implements Lcom/ansca/corona/listeners/CoronaShowApiListener;


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    .line 21
    iput-object p2, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaShowApiHandler;)Lcom/ansca/corona/CoronaActivity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaShowApiHandler;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method


# virtual methods
.method public showAppStoreWindow(Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getStoreApplicationWasPurchasedFrom()Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 93
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getAvailableAppStoreNames()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "supportedAndroidStores"

    .line 94
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 95
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 96
    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 97
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 98
    check-cast v5, Ljava/lang/String;

    .line 99
    invoke-static {v3, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    move-object v2, v5

    :cond_3
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const-string v4, "androidAppPackageName"

    .line 114
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 115
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 116
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_5

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    .line 121
    :cond_5
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_6
    const-string v4, "google"

    .line 125
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 126
    iget-object p1, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    const-string v4, "amazon"

    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 129
    iget-object p1, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8
    const-string v4, "nook"

    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez p1, :cond_9

    return v1

    :cond_9
    const-string v2, "nookAppEAN"

    .line 135
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    goto :goto_0

    .line 139
    :cond_a
    new-instance v1, Lcom/ansca/corona/CoronaShowApiHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaShowApiHandler$1;-><init>(Lcom/ansca/corona/CoronaShowApiHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v1

    :cond_c
    const-string p1, "samsung"

    .line 174
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 175
    iget-object p1, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "samsungapps://ProductDetail/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_d
    return v1
.end method

.method public showCameraWindowForImage(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->showCameraWindowForImage(Ljava/lang/String;)V

    return-void
.end method

.method public showCameraWindowForVideo(II)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/CoronaActivity;->showCameraWindowForVideo(II)V

    return-void
.end method

.method public showRequestPermissionsWindowUsing(Lcom/ansca/corona/permissions/PermissionsSettings;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->showRequestPermissionsWindowUsing(Lcom/ansca/corona/permissions/PermissionsSettings;)V

    return-void
.end method

.method public showSelectImageWindowUsing(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->showSelectImageWindowUsing(Ljava/lang/String;)V

    return-void
.end method

.method public showSelectVideoWindow()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->showSelectVideoWindow()V

    return-void
.end method

.method public showSendMailWindowUsing(Lcom/ansca/corona/MailSettings;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->showSendMailWindowUsing(Lcom/ansca/corona/MailSettings;)V

    return-void
.end method

.method public showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V

    return-void
.end method
