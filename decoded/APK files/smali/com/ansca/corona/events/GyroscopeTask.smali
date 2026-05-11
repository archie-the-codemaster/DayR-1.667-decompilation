.class public Lcom/ansca/corona/events/GyroscopeTask;
.super Ljava/lang/Object;
.source "GyroscopeTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myDeltaTime:D

.field private myXRotation:D

.field private myYRotation:D

.field private myZRotation:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/ansca/corona/events/GyroscopeTask;->myXRotation:D

    .line 19
    iput-wide p3, p0, Lcom/ansca/corona/events/GyroscopeTask;->myYRotation:D

    .line 20
    iput-wide p5, p0, Lcom/ansca/corona/events/GyroscopeTask;->myZRotation:D

    .line 21
    iput-wide p7, p0, Lcom/ansca/corona/events/GyroscopeTask;->myDeltaTime:D

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 9

    .line 26
    iget-wide v1, p0, Lcom/ansca/corona/events/GyroscopeTask;->myXRotation:D

    iget-wide v3, p0, Lcom/ansca/corona/events/GyroscopeTask;->myYRotation:D

    iget-wide v5, p0, Lcom/ansca/corona/events/GyroscopeTask;->myZRotation:D

    iget-wide v7, p0, Lcom/ansca/corona/events/GyroscopeTask;->myDeltaTime:D

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->gyroscopeEvent(Lcom/ansca/corona/CoronaRuntime;DDDD)V

    return-void
.end method
