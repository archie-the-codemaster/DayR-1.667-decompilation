.class public Lcom/ansca/corona/input/RaiseTapEventTask;
.super Ljava/lang/Object;
.source "RaiseTapEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fTapCount:I

.field private fTapPoint:Lcom/ansca/corona/input/TouchPoint;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/TouchPoint;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/ansca/corona/input/RaiseTapEventTask;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 38
    iput p2, p0, Lcom/ansca/corona/input/RaiseTapEventTask;->fTapCount:I

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/ansca/corona/input/RaiseTapEventTask;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    invoke-virtual {v0}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ansca/corona/input/RaiseTapEventTask;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    invoke-virtual {v1}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/ansca/corona/input/RaiseTapEventTask;->fTapCount:I

    invoke-static {p1, v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->tapEvent(Lcom/ansca/corona/CoronaRuntime;III)V

    return-void
.end method
