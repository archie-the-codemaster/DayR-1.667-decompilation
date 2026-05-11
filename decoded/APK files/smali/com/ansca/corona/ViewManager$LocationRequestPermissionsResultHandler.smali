.class public Lcom/ansca/corona/ViewManager$LocationRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationRequestPermissionsResultHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 1389
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1392
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    :cond_0
    return-void
.end method
