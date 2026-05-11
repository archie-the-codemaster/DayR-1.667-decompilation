.class Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;

.field final synthetic val$wasStarted:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;Z)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;->this$1:Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;

    iput-boolean p2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;->val$wasStarted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;->this$1:Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;

    iget-object v0, v0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$800(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-boolean v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;->val$wasStarted:Z

    if-eqz v1, :cond_0

    .line 610
    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$900(Lcom/ansca/corona/CoronaVideoView;)V

    goto :goto_0

    .line 615
    :cond_0
    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView;->access$1000(Lcom/ansca/corona/CoronaVideoView;)V

    :cond_1
    :goto_0
    return-void
.end method
