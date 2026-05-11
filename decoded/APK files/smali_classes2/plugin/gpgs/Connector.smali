.class Lplugin/gpgs/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Connector$SignInListener;
    }
.end annotation


# static fields
.field static client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static final instance:Lplugin/gpgs/Connector;


# instance fields
.field connector:Lplugin/gpgs/Connector;

.field private expectedRequestCode:I

.field private isConnecting:Z

.field private isExpectingResolution:Z

.field private isUserInitiatedSignIn:Z

.field private signInListener:Lplugin/gpgs/Connector$SignInListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lplugin/gpgs/Connector;

    invoke-direct {v0}, Lplugin/gpgs/Connector;-><init>()V

    sput-object v0, Lplugin/gpgs/Connector;->instance:Lplugin/gpgs/Connector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isConnecting:Z

    .line 37
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isExpectingResolution:Z

    .line 38
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isUserInitiatedSignIn:Z

    .line 50
    iput-object p0, p0, Lplugin/gpgs/Connector;->connector:Lplugin/gpgs/Connector;

    return-void
.end method

.method public static getInstance()Lplugin/gpgs/Connector;
    .locals 1

    .line 43
    sget-object v0, Lplugin/gpgs/Connector;->instance:Lplugin/gpgs/Connector;

    return-object v0
.end method

.method static isConnected()Z
    .locals 1

    .line 47
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method connect()V
    .locals 1

    .line 94
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isConnecting:Z

    .line 96
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isConnecting:Z

    .line 102
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method init(Lcom/ansca/corona/CoronaActivity;Lplugin/gpgs/Connector$SignInListener;)V
    .locals 2

    .line 52
    iput-object p2, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    .line 55
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lplugin/gpgs/Connector$1;

    invoke-direct {v0, p0, p1, p2}, Lplugin/gpgs/Connector$1;-><init>(Lplugin/gpgs/Connector;Lcom/ansca/corona/CoronaActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    const/16 v1, 0x31

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    .line 68
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    .line 69
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p2

    sput-object p2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 72
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result p1

    iput p1, p0, Lplugin/gpgs/Connector;->expectedRequestCode:I

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lplugin/gpgs/Connector;->isConnecting:Z

    .line 111
    iget-object p1, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    sget-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-interface {p1, v0}, Lplugin/gpgs/Connector$SignInListener;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const-string v0, "Connection failure:"

    .line 123
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - resolvable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - isUserInitiatedSignIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lplugin/gpgs/Connector;->isUserInitiatedSignIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - isExpectingResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lplugin/gpgs/Connector;->isExpectingResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lplugin/gpgs/Connector;->isUserInitiatedSignIn:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-boolean v0, p0, Lplugin/gpgs/Connector;->isExpectingResolution:Z

    if-nez v0, :cond_2

    .line 134
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    :try_start_0
    iget v1, p0, Lplugin/gpgs/Connector;->expectedRequestCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lplugin/gpgs/Connector;->isExpectingResolution:Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->connect()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isConnecting:Z

    .line 132
    iget-object v0, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    sget-object v1, Lplugin/gpgs/Connector$SignInListener$SignInResult;->FAILED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lplugin/gpgs/Connector$SignInListener;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection suspended, cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->disconnect()V

    .line 118
    iget-object p1, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    sget-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->FAILED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-interface {p1, v0}, Lplugin/gpgs/Connector$SignInListener;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V

    return-void
.end method

.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 148
    iget p1, p0, Lplugin/gpgs/Connector;->expectedRequestCode:I

    if-eq p2, p1, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity Result code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lplugin/gpgs/Connector;->isExpectingResolution:Z

    const/4 p2, -0x1

    if-eq p3, p2, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x2711

    if-eq p3, p1, :cond_3

    const/16 p1, 0x2714

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "This application is misconfigured."

    .line 166
    invoke-static {p1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    .line 168
    :goto_0
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->disconnect()V

    .line 169
    iget-object p1, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    sget-object p2, Lplugin/gpgs/Connector$SignInListener$SignInResult;->FAILED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lplugin/gpgs/Connector$SignInListener;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_2
    iput-boolean p1, p0, Lplugin/gpgs/Connector;->isUserInitiatedSignIn:Z

    .line 162
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->disconnect()V

    .line 163
    iget-object p1, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    sget-object p2, Lplugin/gpgs/Connector$SignInListener$SignInResult;->CANCELED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-interface {p1, p2}, Lplugin/gpgs/Connector$SignInListener;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->connect()V

    :goto_1
    return-void
.end method

.method signIn(Z)V
    .locals 1

    .line 76
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p1, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    sget-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-interface {p1, v0}, Lplugin/gpgs/Connector$SignInListener;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lplugin/gpgs/Connector;->isConnecting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lplugin/gpgs/Connector;->isExpectingResolution:Z

    if-nez v0, :cond_1

    .line 79
    iput-boolean p1, p0, Lplugin/gpgs/Connector;->isUserInitiatedSignIn:Z

    .line 80
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->connect()V

    :cond_1
    :goto_0
    return-void
.end method

.method signOut()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lplugin/gpgs/Connector;->isUserInitiatedSignIn:Z

    .line 86
    iget-object v0, p0, Lplugin/gpgs/Connector;->signInListener:Lplugin/gpgs/Connector$SignInListener;

    invoke-interface {v0}, Lplugin/gpgs/Connector$SignInListener;->onSignOut()V

    .line 87
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 89
    invoke-virtual {p0}, Lplugin/gpgs/Connector;->disconnect()V

    :cond_0
    return-void
.end method
