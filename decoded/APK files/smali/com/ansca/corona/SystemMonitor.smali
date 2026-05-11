.class public Lcom/ansca/corona/SystemMonitor;
.super Ljava/lang/Object;
.source "SystemMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/SystemMonitor$SystemEventHandler;
    }
.end annotation


# instance fields
.field private fContext:Landroid/content/Context;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fIsLowOnMemory:Z

.field private fIsScreenOn:Z

.field private fIsSilentModeEnabled:Z

.field private fListener:Lcom/ansca/corona/CoronaApiListener;

.field private fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 50
    iput-object p2, p0, Lcom/ansca/corona/SystemMonitor;->fContext:Landroid/content/Context;

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    .line 54
    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    .line 55
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 56
    iput-object p2, p0, Lcom/ansca/corona/SystemMonitor;->fListener:Lcom/ansca/corona/CoronaApiListener;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lcom/ansca/corona/SystemMonitor;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ansca/corona/SystemMonitor;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/SystemMonitor;)Landroid/content/Context;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ansca/corona/SystemMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/SystemMonitor;)Lcom/ansca/corona/CoronaApiListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ansca/corona/SystemMonitor;->fListener:Lcom/ansca/corona/CoronaApiListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ansca/corona/SystemMonitor;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    return p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public isLowOnMemory()Z
    .locals 3

    .line 162
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor;->fContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 164
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 167
    iget-boolean v1, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    iget-boolean v2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eq v1, v2, :cond_0

    .line 168
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    .line 169
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 171
    iget-boolean v1, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v2, Lcom/ansca/corona/SystemMonitor$1;

    invoke-direct {v2, p0}, Lcom/ansca/corona/SystemMonitor$1;-><init>(Lcom/ansca/corona/SystemMonitor;)V

    invoke-direct {v1, v2}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenLocked()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 142
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public isScreenOff()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    return v0
.end method

.method public isScreenUnlocked()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSilentModeEnabled()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 198
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    if-eq v0, v1, :cond_1

    .line 207
    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    return v0
.end method

.method public setCoronaApiListener(Lcom/ansca/corona/CoronaApiListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor;->fListener:Lcom/ansca/corona/CoronaApiListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isCoronaKit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    invoke-direct {v0, p0}, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;-><init>(Lcom/ansca/corona/SystemMonitor;)V

    iput-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->dispose()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    return-void
.end method

.method public update()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/ansca/corona/SystemMonitor;->isLowOnMemory()Z

    return-void
.end method
