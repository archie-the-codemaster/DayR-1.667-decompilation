.class Lplugin/facebook/v4a/FBConnectTask;
.super Ljava/lang/Object;
.source "FBConnectTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# static fields
.field private static final REQUEST:I = 0x2

.field private static final SESSION:I = 0x0

.field private static final SESSION_ERROR:I = 0x1


# instance fields
.field private final myAccessToken:Ljava/lang/String;

.field private myDidComplete:Z

.field private final myIsDialog:Z

.field private myIsError:Z

.field private final myListener:I

.field private myMsg:Ljava/lang/String;

.field private myPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

.field private final myTokenExpiration:J

.field private final myType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myType:I

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myAccessToken:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lplugin/facebook/v4a/FBConnectTask;->myMsg:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myTokenExpiration:J

    .line 49
    iput p1, p0, Lplugin/facebook/v4a/FBConnectTask;->myListener:I

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsDialog:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myType:I

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myAccessToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myTokenExpiration:J

    .line 58
    iput-object p2, p0, Lplugin/facebook/v4a/FBConnectTask;->myMsg:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsError:Z

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lplugin/facebook/v4a/FBConnectTask;->myDidComplete:Z

    .line 61
    iput p1, p0, Lplugin/facebook/v4a/FBConnectTask;->myListener:I

    .line 62
    iput-boolean p2, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsDialog:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZ)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myType:I

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myAccessToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myTokenExpiration:J

    .line 70
    iput-object p2, p0, Lplugin/facebook/v4a/FBConnectTask;->myMsg:Ljava/lang/String;

    .line 71
    iput-boolean p3, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsError:Z

    .line 72
    iput-boolean p4, p0, Lplugin/facebook/v4a/FBConnectTask;->myDidComplete:Z

    .line 73
    iput p1, p0, Lplugin/facebook/v4a/FBConnectTask;->myListener:I

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsDialog:Z

    return-void
.end method

.method constructor <init>(ILplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myType:I

    .line 33
    iput-object p2, p0, Lplugin/facebook/v4a/FBConnectTask;->myPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 34
    iput-object p3, p0, Lplugin/facebook/v4a/FBConnectTask;->myAccessToken:Ljava/lang/String;

    const-wide/16 p2, 0x3e8

    .line 38
    div-long/2addr p4, p2

    iput-wide p4, p0, Lplugin/facebook/v4a/FBConnectTask;->myTokenExpiration:J

    .line 39
    iput p1, p0, Lplugin/facebook/v4a/FBConnectTask;->myListener:I

    .line 40
    iput-boolean v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsDialog:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4

    .line 79
    iget v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-boolean v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsDialog:Z

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lplugin/facebook/v4a/FBDialogEvent;

    iget-object v1, p0, Lplugin/facebook/v4a/FBConnectTask;->myMsg:Ljava/lang/String;

    iget-boolean v2, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsError:Z

    iget-boolean v3, p0, Lplugin/facebook/v4a/FBConnectTask;->myDidComplete:Z

    invoke-direct {v0, v1, v2, v3}, Lplugin/facebook/v4a/FBDialogEvent;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, p1}, Lplugin/facebook/v4a/FBDialogEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lplugin/facebook/v4a/FBRequestEvent;

    iget-object v1, p0, Lplugin/facebook/v4a/FBConnectTask;->myMsg:Ljava/lang/String;

    iget-boolean v2, p0, Lplugin/facebook/v4a/FBConnectTask;->myIsError:Z

    iget-boolean v3, p0, Lplugin/facebook/v4a/FBConnectTask;->myDidComplete:Z

    invoke-direct {v0, v1, v2, v3}, Lplugin/facebook/v4a/FBRequestEvent;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, p1}, Lplugin/facebook/v4a/FBRequestEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Lplugin/facebook/v4a/FBLoginEvent;

    sget-object v1, Lplugin/facebook/v4a/FBLoginEvent$Phase;->loginFailed:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    iget-object v2, p0, Lplugin/facebook/v4a/FBConnectTask;->myMsg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lplugin/facebook/v4a/FBLoginEvent;-><init>(Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lplugin/facebook/v4a/FBLoginEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 82
    new-instance v1, Lplugin/facebook/v4a/FBLoginEvent;

    iget-wide v2, p0, Lplugin/facebook/v4a/FBConnectTask;->myTokenExpiration:J

    invoke-direct {v1, v0, v2, v3}, Lplugin/facebook/v4a/FBLoginEvent;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, p1}, Lplugin/facebook/v4a/FBLoginEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 84
    :cond_4
    new-instance v0, Lplugin/facebook/v4a/FBLoginEvent;

    iget-object v1, p0, Lplugin/facebook/v4a/FBConnectTask;->myPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    invoke-direct {v0, v1}, Lplugin/facebook/v4a/FBLoginEvent;-><init>(Lplugin/facebook/v4a/FBLoginEvent$Phase;)V

    invoke-virtual {v0, p1}, Lplugin/facebook/v4a/FBLoginEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    .line 103
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 104
    iget v0, p0, Lplugin/facebook/v4a/FBConnectTask;->myListener:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
