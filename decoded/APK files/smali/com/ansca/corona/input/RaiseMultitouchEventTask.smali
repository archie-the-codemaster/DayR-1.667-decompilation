.class public Lcom/ansca/corona/input/RaiseMultitouchEventTask;
.super Ljava/lang/Object;
.source "RaiseMultitouchEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/TouchTrackerCollection;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTrackerCollection;->clone()Lcom/ansca/corona/input/TouchTrackerCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/RaiseMultitouchEventTask;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 47
    invoke-static {p1}, Lcom/ansca/corona/JavaToNativeShim;->multitouchEventBegin(Lcom/ansca/corona/CoronaRuntime;)V

    .line 48
    iget-object v0, p0, Lcom/ansca/corona/input/RaiseMultitouchEventTask;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {v0}, Lcom/ansca/corona/input/TouchTrackerCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/TouchTracker;

    .line 49
    invoke-static {p1, v1}, Lcom/ansca/corona/JavaToNativeShim;->multitouchEventAdd(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/TouchTracker;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/JavaToNativeShim;->multitouchEventEnd(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method
