.class Lcom/ansca/corona/CoronaSystemApiHandler$2;
.super Ljava/lang/Object;
.source "CoronaSystemApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSystemApiHandler;->requestSystem(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;JI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaSystemApiHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSystemApiHandler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ansca/corona/CoronaSystemApiHandler$2;->this$0:Lcom/ansca/corona/CoronaSystemApiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/ansca/corona/CoronaSystemApiHandler$2;->this$0:Lcom/ansca/corona/CoronaSystemApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSystemApiHandler;->access$000(Lcom/ansca/corona/CoronaSystemApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ansca/corona/CoronaSystemApiHandler$2;->this$0:Lcom/ansca/corona/CoronaSystemApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSystemApiHandler;->access$000(Lcom/ansca/corona/CoronaSystemApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method
