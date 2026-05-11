.class public Lcom/ansca/corona/events/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# instance fields
.field private myController:Lcom/ansca/corona/Controller;

.field private myEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ansca/corona/events/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/LinkedList;

    .line 27
    iput-object p1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/ansca/corona/events/Event;)V
    .locals 1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {p1}, Lcom/ansca/corona/Controller;->requestEventRender()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public loadEventSound(JLjava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ansca/corona/MediaManager;->loadEventSound(JLjava/lang/String;)V

    return-void
.end method

.method public loadSound(JLjava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ansca/corona/MediaManager;->loadSound(JLjava/lang/String;)V

    return-void
.end method

.method public pauseSound(J)V
    .locals 3

    .line 69
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    sget-object v2, Lcom/ansca/corona/events/MediaEvent$Event;->PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ansca/corona/events/MediaEvent;-><init>(Lcom/ansca/corona/Controller;JLcom/ansca/corona/events/MediaEvent$Event;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    return-void
.end method

.method public playSound(JLjava/lang/String;Z)V
    .locals 7

    .line 53
    new-instance v6, Lcom/ansca/corona/events/MediaEvent;

    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    sget-object v5, Lcom/ansca/corona/events/MediaEvent$Event;->PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

    move-object v0, v6

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/events/MediaEvent;-><init>(Lcom/ansca/corona/Controller;JLjava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V

    .line 55
    invoke-virtual {v6, p4}, Lcom/ansca/corona/events/MediaEvent;->setLooping(Z)V

    .line 57
    invoke-virtual {p0, v6}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    return-void
.end method

.method public playVideo(JLjava/lang/String;)V
    .locals 7

    .line 83
    new-instance v6, Lcom/ansca/corona/events/MediaEvent;

    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    sget-object v5, Lcom/ansca/corona/events/MediaEvent$Event;->PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

    move-object v0, v6

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/events/MediaEvent;-><init>(Lcom/ansca/corona/Controller;JLjava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V

    .line 85
    invoke-virtual {p0, v6}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    return-void
.end method

.method public declared-synchronized removeAllEvents()V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resumeSound(J)V
    .locals 3

    .line 76
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    sget-object v2, Lcom/ansca/corona/events/MediaEvent$Event;->ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ansca/corona/events/MediaEvent;-><init>(Lcom/ansca/corona/Controller;JLcom/ansca/corona/events/MediaEvent$Event;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    return-void
.end method

.method public sendEvents()V
    .locals 2

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 95
    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/events/Event;

    .line 100
    invoke-virtual {v1}, Lcom/ansca/corona/events/Event;->Send()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public stopSound(J)V
    .locals 3

    .line 62
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myController:Lcom/ansca/corona/Controller;

    sget-object v2, Lcom/ansca/corona/events/MediaEvent$Event;->StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ansca/corona/events/MediaEvent;-><init>(Lcom/ansca/corona/Controller;JLcom/ansca/corona/events/MediaEvent$Event;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    return-void
.end method
