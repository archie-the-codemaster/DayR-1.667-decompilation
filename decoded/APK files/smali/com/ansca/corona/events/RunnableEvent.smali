.class public Lcom/ansca/corona/events/RunnableEvent;
.super Lcom/ansca/corona/events/Event;
.source "RunnableEvent.java"


# instance fields
.field private fRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ansca/corona/events/RunnableEvent;->fRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public Send()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ansca/corona/events/RunnableEvent;->fRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
