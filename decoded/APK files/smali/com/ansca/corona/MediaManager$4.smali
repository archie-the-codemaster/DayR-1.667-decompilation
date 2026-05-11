.class final Lcom/ansca/corona/MediaManager$4;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MediaManager;->onUsingAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$4;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/ansca/corona/MediaManager$4;->val$activity:Lcom/ansca/corona/CoronaActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 404
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method
