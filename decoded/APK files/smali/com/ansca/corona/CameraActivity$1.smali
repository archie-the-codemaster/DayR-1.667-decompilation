.class Lcom/ansca/corona/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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

    .line 61
    iput-object p1, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 64
    array-length p2, p1

    if-gtz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p2, 0x0

    .line 70
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object p2, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {p2}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object p2, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {p2}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "output"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 84
    iget-object p2, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {}, Lcom/ansca/corona/CameraActivity;->access$000()I

    move-result v2

    invoke-static {p2, v2}, Lcom/ansca/corona/CameraActivity;->access$100(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 92
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 95
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_3

    .line 99
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/CameraActivity;->access$008()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 103
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    return-void

    .line 112
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    iget-object p2, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/ansca/corona/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    iget-object p1, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {p1}, Lcom/ansca/corona/CameraActivity;->finish()V

    :cond_5
    :goto_3
    return-void
.end method
