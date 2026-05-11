.class public Lcom/ansca/corona/maps/MapRequestLocationTask;
.super Ljava/lang/Object;
.source "MapRequestLocationTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fLatitude:D

.field private fListener:I

.field private fLongitude:D

.field private fOriginalRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>(IDDLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p2, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fLatitude:D

    .line 22
    iput-wide p4, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fLongitude:D

    .line 23
    iput-object p6, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fOriginalRequest:Ljava/lang/String;

    .line 24
    iput p1, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fListener:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 7

    .line 29
    iget v1, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fListener:I

    iget-wide v2, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fLatitude:D

    iget-wide v4, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fLongitude:D

    iget-object v6, p0, Lcom/ansca/corona/maps/MapRequestLocationTask;->fOriginalRequest:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/ansca/corona/JavaToNativeShim;->mapRequestLocationEvent(Lcom/ansca/corona/CoronaRuntime;IDDLjava/lang/String;)V

    return-void
.end method
