.class Lcom/ansca/corona/CoronaEditText$5;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaEditText;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$5;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x43

    if-ne p2, v1, :cond_1

    .line 202
    instance-of p2, p3, Lcom/ansca/corona/input/CoronaKeyEvent;

    if-eqz p2, :cond_0

    return v0

    .line 205
    :cond_0
    new-instance p2, Lcom/ansca/corona/input/CoronaKeyEvent;

    invoke-direct {p2, p3}, Lcom/ansca/corona/input/CoronaKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
