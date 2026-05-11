.class Lcom/ansca/corona/VideoActivity$1$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/VideoActivity$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/VideoActivity$1;


# direct methods
.method constructor <init>(Lcom/ansca/corona/VideoActivity$1;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/ansca/corona/VideoActivity$1$1;->this$1:Lcom/ansca/corona/VideoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity$1$1;->this$1:Lcom/ansca/corona/VideoActivity$1;

    iget-object p1, p1, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-static {p1}, Lcom/ansca/corona/VideoActivity;->access$000(Lcom/ansca/corona/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 p1, 0x2bd

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity$1$1;->this$1:Lcom/ansca/corona/VideoActivity$1;

    iget-object p1, p1, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-static {p1}, Lcom/ansca/corona/VideoActivity;->access$000(Lcom/ansca/corona/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity$1$1;->this$1:Lcom/ansca/corona/VideoActivity$1;

    iget-object p1, p1, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-static {p1}, Lcom/ansca/corona/VideoActivity;->access$000(Lcom/ansca/corona/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return v0
.end method
