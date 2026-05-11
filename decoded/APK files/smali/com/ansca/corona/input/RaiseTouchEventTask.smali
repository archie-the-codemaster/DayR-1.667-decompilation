.class public Lcom/ansca/corona/input/RaiseTouchEventTask;
.super Ljava/lang/Object;
.source "RaiseTouchEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fTouchTracker:Lcom/ansca/corona/input/TouchTracker;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/TouchTracker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->clone()Lcom/ansca/corona/input/TouchTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/RaiseTouchEventTask;->fTouchTracker:Lcom/ansca/corona/input/TouchTracker;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ansca/corona/input/RaiseTouchEventTask;->fTouchTracker:Lcom/ansca/corona/input/TouchTracker;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1, v0}, Lcom/ansca/corona/JavaToNativeShim;->touchEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/TouchTracker;)V

    :cond_0
    return-void
.end method
