.class Lcom/ansca/corona/input/ViewInputHandler$EventHandler;
.super Ljava/lang/Object;
.source "ViewInputHandler.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/ViewInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/ViewInputHandler;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getInputHandler()Lcom/ansca/corona/input/ViewInputHandler;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    invoke-virtual {p1, p3}, Lcom/ansca/corona/input/ViewInputHandler;->handle(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/input/ViewInputHandler;->handle(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected setViewListenersTo(Lcom/ansca/corona/input/ViewInputHandler$EventHandler;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    invoke-virtual {v0}, Lcom/ansca/corona/input/ViewInputHandler;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public subscribe()V
    .locals 0

    .line 114
    invoke-virtual {p0, p0}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->setViewListenersTo(Lcom/ansca/corona/input/ViewInputHandler$EventHandler;)V

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->setViewListenersTo(Lcom/ansca/corona/input/ViewInputHandler$EventHandler;)V

    return-void
.end method
