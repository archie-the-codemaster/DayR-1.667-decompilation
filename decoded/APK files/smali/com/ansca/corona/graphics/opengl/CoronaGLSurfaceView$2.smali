.class Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;
.super Landroid/view/OrientationEventListener;
.source "CoronaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Landroid/content/Context;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$000(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$100(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->canRender()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    rsub-int p1, p1, 0x168

    .line 115
    rem-int/lit16 p1, p1, 0x168

    .line 118
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 119
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ansca/corona/WindowOrientation;->fromDegrees(Landroid/content/Context;I)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$200(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 121
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    sget-object v1, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    if-ne v0, v1, :cond_4

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$200(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$302(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;

    .line 123
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v0, p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$202(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;

    .line 124
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$000(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaActivityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivityInfo;->hasFixedOrientation()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 125
    invoke-static {p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$400(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accelerometer_rotation"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 127
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$500(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V

    :cond_4
    :goto_0
    return-void
.end method
