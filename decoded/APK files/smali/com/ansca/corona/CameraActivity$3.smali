.class Lcom/ansca/corona/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CameraActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CameraActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/ansca/corona/CameraActivity$3;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/ansca/corona/CameraActivity$3;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {p1}, Lcom/ansca/corona/CameraActivity;->access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CameraView;->getSelectedCameraIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {}, Lcom/ansca/corona/CameraServices;->getCameraCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 163
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity$3;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {v0}, Lcom/ansca/corona/CameraActivity;->access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CameraView;->selectCameraByIndex(I)V

    return-void
.end method
