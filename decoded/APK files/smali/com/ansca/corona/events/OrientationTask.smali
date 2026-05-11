.class public Lcom/ansca/corona/events/OrientationTask;
.super Ljava/lang/Object;
.source "OrientationTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field myNewOrientation:I

.field myOldOrientation:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/ansca/corona/events/OrientationTask;->myNewOrientation:I

    .line 18
    iput p2, p0, Lcom/ansca/corona/events/OrientationTask;->myOldOrientation:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 23
    iget v0, p0, Lcom/ansca/corona/events/OrientationTask;->myNewOrientation:I

    iget v1, p0, Lcom/ansca/corona/events/OrientationTask;->myOldOrientation:I

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->orientationChanged(Lcom/ansca/corona/CoronaRuntime;II)V

    return-void
.end method
