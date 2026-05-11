.class public Lcom/ansca/corona/maps/MapMarkerTask;
.super Ljava/lang/Object;
.source "MapMarkerTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field fMarker:Lcom/ansca/corona/maps/MapMarker;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/maps/MapMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 8

    .line 23
    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapMarker;->getListener()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    .line 24
    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapMarker;->getListener()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    .line 29
    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapMarker;->getMarkerId()I

    move-result v2

    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapMarker;->getListener()I

    move-result v3

    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapMarker;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarkerTask;->fMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapMarker;->getLongitude()D

    move-result-wide v6

    move-object v1, p1

    .line 28
    invoke-static/range {v1 .. v7}, Lcom/ansca/corona/JavaToNativeShim;->mapMarkerEvent(Lcom/ansca/corona/CoronaRuntime;IIDD)V

    :cond_1
    :goto_0
    return-void
.end method
