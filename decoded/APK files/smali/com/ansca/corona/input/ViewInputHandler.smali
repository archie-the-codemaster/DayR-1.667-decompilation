.class public Lcom/ansca/corona/input/ViewInputHandler;
.super Lcom/ansca/corona/input/InputHandler;
.source "ViewInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12;,
        Lcom/ansca/corona/input/ViewInputHandler$EventHandler;
    }
.end annotation


# instance fields
.field private fEventHandler:Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

.field private fView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputHandler;-><init>(Lcom/ansca/corona/Controller;)V

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12;->createEventHandlerWith(Lcom/ansca/corona/input/ViewInputHandler;)Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler;->fEventHandler:Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;-><init>(Lcom/ansca/corona/input/ViewInputHandler;)V

    iput-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler;->fEventHandler:Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

    :goto_0
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler;->fView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ansca/corona/input/ViewInputHandler;->fView:Landroid/view/View;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ansca/corona/input/ViewInputHandler;->fView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/ansca/corona/input/ViewInputHandler;->fEventHandler:Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

    invoke-virtual {v0}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->unsubscribe()V

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler;->fView:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler;->fView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler;->fEventHandler:Lcom/ansca/corona/input/ViewInputHandler$EventHandler;

    invoke-virtual {p1}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->subscribe()V

    :cond_2
    return-void
.end method
