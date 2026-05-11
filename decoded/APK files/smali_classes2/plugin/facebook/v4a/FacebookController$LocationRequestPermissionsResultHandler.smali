.class Lplugin/facebook/v4a/FacebookController$LocationRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/FacebookController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationRequestPermissionsResultHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebook/v4a/FacebookController$1;)V
    .locals 0

    .line 1622
    invoke-direct {p0}, Lplugin/facebook/v4a/FacebookController$LocationRequestPermissionsResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 1630
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1633
    invoke-virtual {p2}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    .line 1638
    :cond_0
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2100()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
