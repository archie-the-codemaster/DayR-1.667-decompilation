.class public Lcom/ansca/corona/ActivityIndicatorDialog;
.super Landroid/app/Dialog;
.source "ActivityIndicatorDialog.java"


# instance fields
.field private fIsCancelable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/ActivityIndicatorDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    .line 38
    invoke-virtual {p0, p2}, Lcom/ansca/corona/ActivityIndicatorDialog;->requestWindowFeature(I)Z

    .line 41
    new-instance p2, Landroid/widget/ProgressBar;

    invoke-direct {p2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 43
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 44
    invoke-virtual {p2, p1, p1, v0, v0}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 45
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Lcom/ansca/corona/ActivityIndicatorDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public isCancelable()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    if-nez v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/ansca/corona/ActivityIndicatorDialog;->fIsCancelable:Z

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
