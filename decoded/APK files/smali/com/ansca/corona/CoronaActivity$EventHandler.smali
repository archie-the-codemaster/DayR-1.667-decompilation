.class Lcom/ansca/corona/CoronaActivity$EventHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;

.field private fIsUpdatingLayout:Z

.field private fUpdateLayoutEndTicks:Lcom/ansca/corona/Ticks;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 3578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3585
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const/4 p1, 0x0

    .line 3586
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fIsUpdatingLayout:Z

    .line 3587
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fUpdateLayoutEndTicks:Lcom/ansca/corona/Ticks;

    .line 3591
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_0

    .line 3593
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity$EventHandler;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3595
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void

    .line 3581
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private getContentView()Landroid/view/View;
    .locals 1

    .line 3661
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity;->access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3663
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3665
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 3606
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity$EventHandler;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3608
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 3609
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ansca/corona/CoronaActivity$ApiLevel16;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3612
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 3625
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v1, "input_method"

    .line 3626
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3627
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    .line 3632
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3634
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fIsUpdatingLayout:Z

    const-wide/16 v2, 0x2

    .line 3635
    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/Ticks;->addSeconds(J)Lcom/ansca/corona/Ticks;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fUpdateLayoutEndTicks:Lcom/ansca/corona/Ticks;

    .line 3639
    :cond_0
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fIsUpdatingLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fUpdateLayoutEndTicks:Lcom/ansca/corona/Ticks;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/Ticks;->compareTo(Lcom/ansca/corona/Ticks;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 3640
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fIsUpdatingLayout:Z

    .line 3642
    :cond_1
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaActivity$EventHandler;->fIsUpdatingLayout:Z

    if-nez v0, :cond_2

    return-void

    .line 3647
    :cond_2
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity$EventHandler;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3649
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method
