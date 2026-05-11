.class Lcom/ansca/corona/maps/MapView$LocationBounds;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationBounds"
.end annotation


# instance fields
.field private fNorthEastLocation:Landroid/location/Location;

.field private fSouthWestLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/maps/MapView;DDDD)V
    .locals 1

    .line 1063
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-instance p1, Landroid/location/Location;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    .line 1065
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1066
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {p1, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1068
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    .line 1069
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {p1, p6, p7}, Landroid/location/Location;->setLatitude(D)V

    .line 1070
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {p1, p8, p9}, Landroid/location/Location;->setLongitude(D)V

    return-void
.end method


# virtual methods
.method public contains(Landroid/location/Location;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1087
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 1088
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    .line 1089
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    cmpg-double v6, v1, v3

    if-gtz v6, :cond_1

    .line 1090
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_2

    .line 1091
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_2

    return v5

    .line 1096
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpg-double v6, v1, v3

    if-gtz v6, :cond_2

    .line 1097
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_2

    return v5

    :cond_2
    return v0
.end method
