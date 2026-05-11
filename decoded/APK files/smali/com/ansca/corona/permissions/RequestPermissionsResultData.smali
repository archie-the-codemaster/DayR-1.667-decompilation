.class public Lcom/ansca/corona/permissions/RequestPermissionsResultData;
.super Ljava/lang/Object;
.source "RequestPermissionsResultData.java"


# instance fields
.field private fCoronaActivity:Lcom/ansca/corona/CoronaActivity;

.field private fDeniedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fGrantedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

.field private fRequestCode:I

.field private fRequestPermissionsResultHandler:Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;

.field private fUserHitNeverAskAgain:Z


# direct methods
.method public constructor <init>(Lcom/ansca/corona/permissions/PermissionsSettings;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/permissions/PermissionsSettings;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/ansca/corona/CoronaActivity;",
            "Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

    .line 26
    iput-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fGrantedPermissions:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fDeniedPermissions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fUserHitNeverAskAgain:Z

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fRequestCode:I

    .line 38
    iput-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    .line 41
    iput-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fRequestPermissionsResultHandler:Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;

    .line 52
    iput-object p1, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

    .line 53
    iput-object p2, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fGrantedPermissions:Ljava/util/ArrayList;

    .line 54
    iput-object p3, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fDeniedPermissions:Ljava/util/ArrayList;

    .line 55
    iput-boolean p4, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fUserHitNeverAskAgain:Z

    .line 56
    iput p5, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fRequestCode:I

    .line 57
    iput-object p6, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    .line 58
    iput-object p7, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fRequestPermissionsResultHandler:Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;

    return-void
.end method


# virtual methods
.method public getCoronaActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method public getDeniedPermissions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fDeniedPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGrantedPermissions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fGrantedPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPermissionsSettings()Lcom/ansca/corona/permissions/PermissionsSettings;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

    return-object v0
.end method

.method public getRequestPermissionsResultHandler()Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fRequestPermissionsResultHandler:Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;

    return-object v0
.end method

.method public getReuestCode()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fRequestCode:I

    return v0
.end method

.method public getUserHitNeverAskAgain()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->fUserHitNeverAskAgain:Z

    return v0
.end method
