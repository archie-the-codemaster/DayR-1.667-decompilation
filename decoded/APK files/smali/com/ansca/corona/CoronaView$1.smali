.class Lcom/ansca/corona/CoronaView$1;
.super Ljava/lang/Object;
.source "CoronaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaView;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/ansca/corona/CoronaView$1;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/ansca/corona/CoronaView$1;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaView;->access$100(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaView;->removeView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/ansca/corona/CoronaView$1;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaView;->access$100(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/CoronaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
