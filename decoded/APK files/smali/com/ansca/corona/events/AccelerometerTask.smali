.class public Lcom/ansca/corona/events/AccelerometerTask;
.super Ljava/lang/Object;
.source "AccelerometerTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myDeltaTime:D

.field private myX:D

.field private myY:D

.field private myZ:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/ansca/corona/events/AccelerometerTask;->myX:D

    .line 19
    iput-wide p3, p0, Lcom/ansca/corona/events/AccelerometerTask;->myY:D

    .line 20
    iput-wide p5, p0, Lcom/ansca/corona/events/AccelerometerTask;->myZ:D

    .line 21
    iput-wide p7, p0, Lcom/ansca/corona/events/AccelerometerTask;->myDeltaTime:D

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 9

    .line 26
    iget-wide v1, p0, Lcom/ansca/corona/events/AccelerometerTask;->myX:D

    iget-wide v3, p0, Lcom/ansca/corona/events/AccelerometerTask;->myY:D

    iget-wide v5, p0, Lcom/ansca/corona/events/AccelerometerTask;->myZ:D

    iget-wide v7, p0, Lcom/ansca/corona/events/AccelerometerTask;->myDeltaTime:D

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->accelerometerEvent(Lcom/ansca/corona/CoronaRuntime;DDDD)V

    return-void
.end method
