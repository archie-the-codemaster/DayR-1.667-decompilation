.class public Lcom/ansca/corona/events/SoundEndedTask;
.super Ljava/lang/Object;
.source "SoundEndedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fMediaId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/ansca/corona/events/SoundEndedTask;->fMediaId:J

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/ansca/corona/events/SoundEndedTask;->fMediaId:J

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->soundEndCallback(Lcom/ansca/corona/CoronaRuntime;J)V

    return-void
.end method
