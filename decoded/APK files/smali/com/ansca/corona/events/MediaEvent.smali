.class public Lcom/ansca/corona/events/MediaEvent;
.super Lcom/ansca/corona/events/Event;
.source "MediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/events/MediaEvent$Event;
    }
.end annotation


# instance fields
.field myController:Lcom/ansca/corona/Controller;

.field myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

.field myLooping:Z

.field myMediaId:J

.field myMediaName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;JLcom/ansca/corona/events/MediaEvent$Event;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 43
    iput-object p4, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 44
    iput-wide p2, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    .line 45
    iput-object p1, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    return-void
.end method

.method constructor <init>(Lcom/ansca/corona/Controller;JLjava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 50
    iput-object p5, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 51
    iput-wide p2, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    .line 52
    iput-object p4, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaName:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    return-void
.end method

.method constructor <init>(Lcom/ansca/corona/Controller;Ljava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 36
    iput-object p3, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 37
    iput-object p2, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaName:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    return-void
.end method


# virtual methods
.method public Send()V
    .locals 5

    .line 63
    sget-object v0, Lcom/ansca/corona/events/MediaEvent$1;->$SwitchMap$com$ansca$corona$events$MediaEvent$Event:[I

    iget-object v1, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-virtual {v1}, Lcom/ansca/corona/events/MediaEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    iget-object v3, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ansca/corona/MediaManager;->playVideo(JLjava/lang/String;Z)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/MediaManager;->resumeMedia(J)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/MediaManager;->pauseMedia(J)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/MediaManager;->stopMedia(J)V

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcom/ansca/corona/events/MediaEvent;->myController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:J

    iget-boolean v3, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/MediaManager;->playMedia(JZ)V

    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLooping(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    return-void
.end method
