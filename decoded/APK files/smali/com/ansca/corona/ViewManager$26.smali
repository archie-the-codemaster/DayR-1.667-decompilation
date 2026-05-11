.class Lcom/ansca/corona/ViewManager$26;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->videoViewTouchTogglesPlay(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$toggle:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$26;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$26;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$26;->val$toggle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$26;->this$0:Lcom/ansca/corona/ViewManager;

    iget v1, p0, Lcom/ansca/corona/ViewManager$26;->val$id:I

    invoke-static {v0, v1}, Lcom/ansca/corona/ViewManager;->access$700(Lcom/ansca/corona/ViewManager;I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$26;->val$toggle:Z

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaVideoView;->touchTogglesPlay(Z)V

    :cond_0
    return-void
.end method
