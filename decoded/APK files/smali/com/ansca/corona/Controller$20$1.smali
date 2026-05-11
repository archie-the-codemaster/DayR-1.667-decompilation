.class Lcom/ansca/corona/Controller$20$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$20;

.field final synthetic val$finalVis:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$20;I)V
    .locals 0

    .line 2044
    iput-object p1, p0, Lcom/ansca/corona/Controller$20$1;->this$1:Lcom/ansca/corona/Controller$20;

    iput p2, p0, Lcom/ansca/corona/Controller$20$1;->val$finalVis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 2049
    iget p1, p0, Lcom/ansca/corona/Controller$20$1;->val$finalVis:I

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_0

    .line 2051
    iget-object p1, p0, Lcom/ansca/corona/Controller$20$1;->this$1:Lcom/ansca/corona/Controller$20;

    iget-object p1, p1, Lcom/ansca/corona/Controller$20;->val$glView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    iget v0, p0, Lcom/ansca/corona/Controller$20$1;->val$finalVis:I

    invoke-static {p1, v0}, Lcom/ansca/corona/Controller$ApiLevel11;->setSystemUiVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
