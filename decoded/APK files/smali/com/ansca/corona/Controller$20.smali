.class Lcom/ansca/corona/Controller$20;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->setSystemUiVisibility(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$glView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

.field final synthetic val$visibility:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Ljava/lang/String;Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V
    .locals 0

    .line 2004
    iput-object p1, p0, Lcom/ansca/corona/Controller$20;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$20;->val$visibility:Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/Controller$20;->val$glView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2007
    iget-object v0, p0, Lcom/ansca/corona/Controller$20;->val$visibility:Ljava/lang/String;

    const-string v1, "immersiveSticky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xe

    const-string v2, "Amazon"

    const/16 v3, 0x13

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2009
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x1206

    goto :goto_0

    .line 2017
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/Controller$20;->val$visibility:Ljava/lang/String;

    const-string v5, "immersive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2019
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    :cond_2
    const/16 v0, 0xa06

    goto :goto_0

    .line 2027
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/Controller$20;->val$visibility:Ljava/lang/String;

    const-string v1, "lowProfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 2032
    :cond_4
    iget-object v0, p0, Lcom/ansca/corona/Controller$20;->val$visibility:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    if-le v0, v4, :cond_7

    .line 2038
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    .line 2039
    iget-object v1, p0, Lcom/ansca/corona/Controller$20;->val$glView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v1}, Lcom/ansca/corona/Controller$ApiLevel11;->getSystemUiVisibility(Landroid/view/View;)I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    or-int/2addr v0, v1

    .line 2041
    :cond_6
    iget-object v1, p0, Lcom/ansca/corona/Controller$20;->val$glView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v1, v0}, Lcom/ansca/corona/Controller$ApiLevel11;->setSystemUiVisibility(Landroid/view/View;I)V

    .line 2044
    iget-object v1, p0, Lcom/ansca/corona/Controller$20;->val$glView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    new-instance v2, Lcom/ansca/corona/Controller$20$1;

    invoke-direct {v2, p0, v0}, Lcom/ansca/corona/Controller$20$1;-><init>(Lcom/ansca/corona/Controller$20;I)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_7
    return-void
.end method
