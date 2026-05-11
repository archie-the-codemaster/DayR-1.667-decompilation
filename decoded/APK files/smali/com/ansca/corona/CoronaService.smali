.class public Lcom/ansca/corona/CoronaService;
.super Landroid/app/Service;
.source "CoronaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaService$Binder;
    }
.end annotation


# instance fields
.field private fBinder:Lcom/ansca/corona/CoronaService$Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Lcom/ansca/corona/CoronaService$Binder;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaService$Binder;-><init>(Lcom/ansca/corona/CoronaService;)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaService;->fBinder:Lcom/ansca/corona/CoronaService$Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
