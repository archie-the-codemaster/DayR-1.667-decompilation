.class Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->onMapLoadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/ansca/corona/maps/MapView$JavaScriptInterface;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 912
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/maps/MapView;->access$802(Lcom/ansca/corona/maps/MapView;Z)Z

    .line 915
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$300(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/MessageBasedTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 918
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapView;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 920
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 927
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ansca/corona/maps/MapView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 930
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 932
    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v3, v3, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v3}, Lcom/ansca/corona/maps/MapView;->access$900(Lcom/ansca/corona/maps/MapView;)Landroid/widget/ProgressBar;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-class v0, Landroid/view/View;

    const-string v2, "setAlpha"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 935
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v2}, Lcom/ansca/corona/maps/MapView;->access$900(Lcom/ansca/corona/maps/MapView;)Landroid/widget/ProgressBar;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v1, v1, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v1}, Lcom/ansca/corona/maps/MapView;->access$900(Lcom/ansca/corona/maps/MapView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/maps/MapView;->removeView(Landroid/view/View;)V

    .line 944
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    iget-object v0, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1000(Lcom/ansca/corona/maps/MapView;)V

    return-void
.end method
