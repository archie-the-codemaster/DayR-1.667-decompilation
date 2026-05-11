.class Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;
.super Lcom/ansca/corona/events/Event;
.source "CoronaRuntimeTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskEvent"
.end annotation


# instance fields
.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fTask:Lcom/ansca/corona/CoronaRuntimeTask;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntimeTask;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    if-eqz p1, :cond_0

    .line 166
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fTask:Lcom/ansca/corona/CoronaRuntimeTask;

    .line 167
    iput-object p2, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public Send()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fTask:Lcom/ansca/corona/CoronaRuntimeTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-interface {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTask;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method
