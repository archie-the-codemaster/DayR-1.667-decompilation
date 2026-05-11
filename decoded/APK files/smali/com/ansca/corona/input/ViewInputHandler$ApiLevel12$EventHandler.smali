.class Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;
.super Lcom/ansca/corona/input/ViewInputHandler$EventHandler;
.source "ViewInputHandler.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/ViewInputHandler;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;-><init>(Lcom/ansca/corona/input/ViewInputHandler;)V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;->getInputHandler()Lcom/ansca/corona/input/ViewInputHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ansca/corona/input/ViewInputHandler;->handle(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected setViewListenersTo(Lcom/ansca/corona/input/ViewInputHandler$EventHandler;)V
    .locals 1

    .line 213
    invoke-super {p0, p1}, Lcom/ansca/corona/input/ViewInputHandler$EventHandler;->setViewListenersTo(Lcom/ansca/corona/input/ViewInputHandler$EventHandler;)V

    .line 215
    invoke-virtual {p0}, Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;->getInputHandler()Lcom/ansca/corona/input/ViewInputHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/ViewInputHandler;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    return-void
.end method
