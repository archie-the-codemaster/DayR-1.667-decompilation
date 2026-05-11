.class Lcom/ansca/corona/MediaManager$3;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MediaManager;->playVideo(JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MediaManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$mediaControlsEnabled:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MediaManager;Ljava/lang/String;Landroid/content/Context;JZ)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    iput-object p2, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/MediaManager$3;->val$context:Landroid/content/Context;

    iput-wide p4, p0, Lcom/ansca/corona/MediaManager$3;->val$id:J

    iput-boolean p6, p0, Lcom/ansca/corona/MediaManager$3;->val$mediaControlsEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/ansca/corona/MediaManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ansca/corona/MediaManager;->createVideoURLFromString(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ansca/corona/MediaManager$3;->val$context:Landroid/content/Context;

    const-class v3, Lcom/ansca/corona/VideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-wide v2, p0, Lcom/ansca/corona/MediaManager$3;->val$id:J

    const-string v0, "video_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    iget-boolean v0, p0, Lcom/ansca/corona/MediaManager$3;->val$mediaControlsEnabled:Z

    const-string v2, "media_controls_enabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 337
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/ansca/corona/MediaManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
