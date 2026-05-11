.class public Lcom/ansca/corona/input/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# static fields
.field public static final CONNECTED:Lcom/ansca/corona/input/ConnectionState;

.field public static final CONNECTING:Lcom/ansca/corona/input/ConnectionState;

.field public static final DISCONNECTED:Lcom/ansca/corona/input/ConnectionState;

.field public static final DISCONNECTING:Lcom/ansca/corona/input/ConnectionState;


# instance fields
.field private fCoronaIntegerId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/ansca/corona/input/ConnectionState;

    const/4 v1, 0x0

    const-string v2, "disconnected"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/ConnectionState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/ConnectionState;->DISCONNECTED:Lcom/ansca/corona/input/ConnectionState;

    .line 33
    new-instance v0, Lcom/ansca/corona/input/ConnectionState;

    const/4 v1, 0x1

    const-string v2, "connected"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/ConnectionState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/ConnectionState;->CONNECTED:Lcom/ansca/corona/input/ConnectionState;

    .line 36
    new-instance v0, Lcom/ansca/corona/input/ConnectionState;

    const/4 v1, 0x2

    const-string v2, "connecting"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/ConnectionState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/ConnectionState;->CONNECTING:Lcom/ansca/corona/input/ConnectionState;

    .line 39
    new-instance v0, Lcom/ansca/corona/input/ConnectionState;

    const/4 v1, 0x3

    const-string v2, "disconnecting"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/ConnectionState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/ConnectionState;->DISCONNECTING:Lcom/ansca/corona/input/ConnectionState;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/ansca/corona/input/ConnectionState;->fCoronaIntegerId:I

    .line 49
    iput-object p2, p0, Lcom/ansca/corona/input/ConnectionState;->fCoronaStringId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/ansca/corona/input/ConnectionState;->fCoronaIntegerId:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 59
    sget-object v0, Lcom/ansca/corona/input/ConnectionState;->CONNECTED:Lcom/ansca/corona/input/ConnectionState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toCoronaIntegerId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/ansca/corona/input/ConnectionState;->fCoronaIntegerId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ansca/corona/input/ConnectionState;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ansca/corona/input/ConnectionState;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
