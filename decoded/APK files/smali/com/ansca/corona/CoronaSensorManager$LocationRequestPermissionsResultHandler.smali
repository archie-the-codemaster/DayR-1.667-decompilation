.class Lcom/ansca/corona/CoronaSensorManager$LocationRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationRequestPermissionsResultHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 886
    invoke-direct {p0}, Lcom/ansca/corona/CoronaSensorManager$LocationRequestPermissionsResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 893
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    :cond_0
    return-void
.end method
