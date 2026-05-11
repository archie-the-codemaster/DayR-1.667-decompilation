.class Lcom/ansca/corona/CoronaActivity$3;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->hideSplashScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$splashView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 2211
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$3;->this$0:Lcom/ansca/corona/CoronaActivity;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$3;->val$splashView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2214
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$3;->val$splashView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2216
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$3;->val$splashView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
