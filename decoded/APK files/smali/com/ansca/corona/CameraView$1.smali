.class Lcom/ansca/corona/CameraView$1;
.super Landroid/view/OrientationEventListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CameraView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CameraView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CameraView;Landroid/content/Context;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    rsub-int p1, p1, 0x168

    .line 62
    rem-int/lit16 p1, p1, 0x168

    const/16 v0, 0x2d

    const/16 v1, 0x87

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0

    :cond_1
    const/16 v0, 0xe1

    if-lt p1, v1, :cond_2

    if-ge p1, v0, :cond_2

    .line 69
    iget-object p1, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/16 v0, 0xb4

    invoke-static {p1, v0}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    .line 72
    iget-object p1, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/16 v0, 0x10e

    invoke-static {p1, v0}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    :goto_0
    return-void
.end method
