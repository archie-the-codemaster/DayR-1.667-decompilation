.class public Lcom/ansca/corona/CoronaVideoView$CenteredLayout;
.super Landroid/widget/FrameLayout;
.source "CoronaVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CenteredLayout"
.end annotation


# instance fields
.field private fVideoView:Lcom/ansca/corona/CoronaVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/ansca/corona/CoronaVideoView;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/CoronaVideoView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    .line 46
    iget-object p1, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x11

    invoke-direct {p2, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p1, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getVideoView()Lcom/ansca/corona/CoronaVideoView;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    return-object v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 68
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaVideoView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 90
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaVideoView;->setId(I)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaVideoView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
