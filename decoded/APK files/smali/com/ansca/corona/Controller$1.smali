.class final Lcom/ansca/corona/Controller$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->updateRuntimeState(Lcom/ansca/corona/CoronaRuntime;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$controller:Lcom/ansca/corona/Controller;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/ansca/corona/Controller$1;->val$controller:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 344
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v1, p0, Lcom/ansca/corona/Controller$1;->val$controller:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$000(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/Controller$RuntimeState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/ansca/corona/Controller$1;->val$controller:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getGLView()Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method
