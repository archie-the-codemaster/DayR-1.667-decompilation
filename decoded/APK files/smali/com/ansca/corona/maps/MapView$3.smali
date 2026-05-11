.class Lcom/ansca/corona/maps/MapView$3;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/maps/MapView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/maps/MapView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$3;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$3;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->isZoomEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_0

    return v1

    .line 191
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_2

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
