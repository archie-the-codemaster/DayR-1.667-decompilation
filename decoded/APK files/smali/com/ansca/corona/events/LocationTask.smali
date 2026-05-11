.class public Lcom/ansca/corona/events/LocationTask;
.super Ljava/lang/Object;
.source "LocationTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myAccuracy:D

.field private myAltitude:D

.field private myBearing:D

.field private myLatitude:D

.field private myLongitude:D

.field private mySpeed:D

.field private myTime:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/ansca/corona/events/LocationTask;->myLatitude:D

    .line 30
    iput-wide v0, p0, Lcom/ansca/corona/events/LocationTask;->myLongitude:D

    .line 31
    iput-wide v0, p0, Lcom/ansca/corona/events/LocationTask;->myAltitude:D

    .line 32
    iput-wide v0, p0, Lcom/ansca/corona/events/LocationTask;->myAccuracy:D

    .line 33
    iput-wide v0, p0, Lcom/ansca/corona/events/LocationTask;->mySpeed:D

    .line 34
    iput-wide p1, p0, Lcom/ansca/corona/events/LocationTask;->myBearing:D

    .line 35
    iput-wide v0, p0, Lcom/ansca/corona/events/LocationTask;->myTime:D

    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/ansca/corona/events/LocationTask;->myLatitude:D

    .line 19
    iput-wide p3, p0, Lcom/ansca/corona/events/LocationTask;->myLongitude:D

    .line 20
    iput-wide p5, p0, Lcom/ansca/corona/events/LocationTask;->myAltitude:D

    .line 21
    iput-wide p7, p0, Lcom/ansca/corona/events/LocationTask;->myAccuracy:D

    .line 22
    iput-wide p9, p0, Lcom/ansca/corona/events/LocationTask;->mySpeed:D

    .line 23
    iput-wide p11, p0, Lcom/ansca/corona/events/LocationTask;->myBearing:D

    .line 24
    iput-wide p13, p0, Lcom/ansca/corona/events/LocationTask;->myTime:D

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 16

    move-object/from16 v0, p0

    .line 40
    iget-wide v2, v0, Lcom/ansca/corona/events/LocationTask;->myLatitude:D

    iget-wide v4, v0, Lcom/ansca/corona/events/LocationTask;->myLongitude:D

    iget-wide v6, v0, Lcom/ansca/corona/events/LocationTask;->myAltitude:D

    iget-wide v8, v0, Lcom/ansca/corona/events/LocationTask;->myAccuracy:D

    iget-wide v10, v0, Lcom/ansca/corona/events/LocationTask;->mySpeed:D

    iget-wide v12, v0, Lcom/ansca/corona/events/LocationTask;->myBearing:D

    iget-wide v14, v0, Lcom/ansca/corona/events/LocationTask;->myTime:D

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v15}, Lcom/ansca/corona/JavaToNativeShim;->locationEvent(Lcom/ansca/corona/CoronaRuntime;DDDDDDD)V

    return-void
.end method
