.class public Lcom/ansca/corona/maps/MapTappedTask;
.super Ljava/lang/Object;
.source "MapTappedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field fId:I

.field fLatitude:D

.field fLongitude:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/ansca/corona/maps/MapTappedTask;->fId:I

    .line 20
    iput-wide p4, p0, Lcom/ansca/corona/maps/MapTappedTask;->fLongitude:D

    .line 21
    iput-wide p2, p0, Lcom/ansca/corona/maps/MapTappedTask;->fLatitude:D

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 6

    .line 26
    iget v1, p0, Lcom/ansca/corona/maps/MapTappedTask;->fId:I

    iget-wide v2, p0, Lcom/ansca/corona/maps/MapTappedTask;->fLatitude:D

    iget-wide v4, p0, Lcom/ansca/corona/maps/MapTappedTask;->fLongitude:D

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/ansca/corona/JavaToNativeShim;->mapTappedEvent(Lcom/ansca/corona/CoronaRuntime;IDD)V

    return-void
.end method
