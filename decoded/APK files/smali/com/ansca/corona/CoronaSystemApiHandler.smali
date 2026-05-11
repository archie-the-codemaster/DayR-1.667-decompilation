.class public Lcom/ansca/corona/CoronaSystemApiHandler;
.super Ljava/lang/Object;
.source "CoronaSystemApiHandler.java"

# interfaces
.implements Lcom/ansca/corona/listeners/CoronaSystemApiListener;


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaSystemApiHandler;)Lcom/ansca/corona/CoronaActivity;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object p0
.end method


# virtual methods
.method public getInitialIntent()Landroid/content/Intent;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getInitialIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public requestSystem(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;JI)Z
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_9

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "exitApplication"

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 39
    iget-object p1, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance p2, Lcom/ansca/corona/CoronaSystemApiHandler$1;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaSystemApiHandler$1;-><init>(Lcom/ansca/corona/CoronaSystemApiHandler;)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v0, "suspendApplication"

    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object p1, p0, Lcom/ansca/corona/CoronaSystemApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance p2, Lcom/ansca/corona/CoronaSystemApiHandler$2;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaSystemApiHandler$2;-><init>(Lcom/ansca/corona/CoronaSystemApiHandler;)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v2

    :cond_3
    const-string v0, "validateResourceFile"

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_4

    return v1

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 67
    invoke-static {p1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v3

    cmp-long p2, v3, p3

    if-eqz p2, :cond_5

    goto/16 :goto_2

    :cond_5
    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    .line 75
    invoke-virtual {p1, p5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object p4

    sget-object p5, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne p4, p5, :cond_8

    const/4 p4, -0x1

    const-string p5, "filename"

    .line 77
    invoke-virtual {p1, p4, p5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p1, p4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_6

    return v1

    .line 82
    :cond_6
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v0, "size"

    .line 84
    invoke-virtual {p1, p4, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 85
    invoke-virtual {p1, p4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v3, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v0, v3, :cond_7

    .line 87
    invoke-virtual {p1, p4}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p2

    .line 89
    :cond_7
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_1

    :cond_8
    const-string p5, ""

    .line 92
    :goto_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    const-wide/16 v3, 0x0

    cmpl-double p1, p2, v3

    if-ltz p1, :cond_9

    .line 94
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    new-instance p4, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {p4, p1}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p4, p5}, Lcom/ansca/corona/storage/FileServices;->getResourceFileSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "validateResourceFile: assetFilename: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Corona"

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "validateResourceFile: assetFileSize: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "validateResourceFile: fileSize : "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    long-to-double p4, v3

    cmpl-double p1, p4, p2

    if-nez p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    :goto_2
    return v1
.end method
