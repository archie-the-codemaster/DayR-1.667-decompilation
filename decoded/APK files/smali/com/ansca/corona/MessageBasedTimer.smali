.class public Lcom/ansca/corona/MessageBasedTimer;
.super Ljava/lang/Object;
.source "MessageBasedTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/MessageBasedTimer$Listener;
    }
.end annotation


# static fields
.field public static final MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;


# instance fields
.field private fHandler:Landroid/os/Handler;

.field private fInterval:Lcom/ansca/corona/TimeSpan;

.field private fIsRunning:Z

.field private fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

.field private fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

.field private fRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x5

    .line 46
    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/MessageBasedTimer;->MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    .line 62
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    const-wide/16 v0, 0x1

    .line 64
    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromMinutes(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    .line 65
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/MessageBasedTimer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ansca/corona/MessageBasedTimer;->onElapsed()V

    return-void
.end method

.method private onElapsed()V
    .locals 4

    .line 227
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0}, Lcom/ansca/corona/MessageBasedTimer$Listener;->onTimerElapsed()V

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-nez v0, :cond_2

    return-void

    .line 242
    :cond_2
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v0

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    iget-object v2, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/Ticks;->add(Lcom/ansca/corona/TimeSpan;)Lcom/ansca/corona/Ticks;

    move-result-object v1

    iput-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    .line 245
    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/Ticks;->compareTo(Lcom/ansca/corona/Ticks;)I

    move-result v1

    if-lez v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/Ticks;->subtract(Lcom/ansca/corona/Ticks;)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v0

    .line 247
    iget-object v2, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInterval()Lcom/ansca/corona/TimeSpan;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    return-object v0
.end method

.method public getListener()Lcom/ansca/corona/MessageBasedTimer$Listener;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    return-object v0
.end method

.method public isNotRunning()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    :cond_2
    return-void
.end method

.method public setInterval(Lcom/ansca/corona/TimeSpan;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 143
    sget-object v0, Lcom/ansca/corona/MessageBasedTimer;->MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/TimeSpan;->compareTo(Lcom/ansca/corona/TimeSpan;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 144
    sget-object p1, Lcom/ansca/corona/MessageBasedTimer;->MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/TimeSpan;->equals(Lcom/ansca/corona/TimeSpan;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 153
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    return-void

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    return-void
.end method

.method public start()V
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 193
    :cond_1
    new-instance v0, Lcom/ansca/corona/MessageBasedTimer$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/MessageBasedTimer$1;-><init>(Lcom/ansca/corona/MessageBasedTimer;)V

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    .line 202
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/Ticks;->add(Lcom/ansca/corona/TimeSpan;)Lcom/ansca/corona/Ticks;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    .line 203
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {v2}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 209
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    return-void
.end method
