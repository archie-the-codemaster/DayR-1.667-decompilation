.class Lplugin/gpgs/Connector$1;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Connector;->init(Lcom/ansca/corona/CoronaActivity;Lplugin/gpgs/Connector$SignInListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Connector;

.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$popupView:Landroid/view/View;


# direct methods
.method constructor <init>(Lplugin/gpgs/Connector;Lcom/ansca/corona/CoronaActivity;Landroid/view/View;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lplugin/gpgs/Connector$1;->this$0:Lplugin/gpgs/Connector;

    iput-object p2, p0, Lplugin/gpgs/Connector$1;->val$activity:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Lplugin/gpgs/Connector$1;->val$popupView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lplugin/gpgs/Connector$1;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lplugin/gpgs/Connector$1;->val$popupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lplugin/gpgs/Connector$1;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
