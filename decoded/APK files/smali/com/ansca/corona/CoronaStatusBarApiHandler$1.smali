.class Lcom/ansca/corona/CoronaStatusBarApiHandler$1;
.super Ljava/lang/Object;
.source "CoronaStatusBarApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaStatusBarApiHandler;->setStatusBarMode(Lcom/ansca/corona/CoronaStatusBarSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaStatusBarApiHandler;

.field final synthetic val$finalMode:Lcom/ansca/corona/CoronaStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaStatusBarApiHandler;Lcom/ansca/corona/CoronaStatusBarSettings;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStatusBarApiHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;->val$finalMode:Lcom/ansca/corona/CoronaStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStatusBarApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStatusBarApiHandler;->access$000(Lcom/ansca/corona/CoronaStatusBarApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStatusBarApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStatusBarApiHandler;->access$000(Lcom/ansca/corona/CoronaStatusBarApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;->val$finalMode:Lcom/ansca/corona/CoronaStatusBarSettings;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->setStatusBarMode(Lcom/ansca/corona/CoronaStatusBarSettings;)V

    :cond_0
    return-void
.end method
