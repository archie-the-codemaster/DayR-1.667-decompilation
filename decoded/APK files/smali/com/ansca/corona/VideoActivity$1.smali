.class Lcom/ansca/corona/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/VideoActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/VideoActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-static {v0}, Lcom/ansca/corona/VideoActivity;->access$000(Lcom/ansca/corona/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    new-instance v0, Lcom/ansca/corona/VideoActivity$1$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/VideoActivity$1$1;-><init>(Lcom/ansca/corona/VideoActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
