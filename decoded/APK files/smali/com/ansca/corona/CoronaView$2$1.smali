.class Lcom/ansca/corona/CoronaView$2$1;
.super Ljava/lang/Object;
.source "CoronaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaView$2;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaView$2;

.field final synthetic val$finalReturnValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaView$2;Ljava/lang/Object;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/ansca/corona/CoronaView$2$1;->this$1:Lcom/ansca/corona/CoronaView$2;

    iput-object p2, p0, Lcom/ansca/corona/CoronaView$2$1;->val$finalReturnValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/ansca/corona/CoronaView$2$1;->this$1:Lcom/ansca/corona/CoronaView$2;

    iget-object v0, v0, Lcom/ansca/corona/CoronaView$2;->val$listener:Lcom/ansca/corona/CoronaView$SendEventListener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/ansca/corona/CoronaView$2$1;->this$1:Lcom/ansca/corona/CoronaView$2;

    iget-object v0, v0, Lcom/ansca/corona/CoronaView$2;->val$listener:Lcom/ansca/corona/CoronaView$SendEventListener;

    iget-object v1, p0, Lcom/ansca/corona/CoronaView$2$1;->val$finalReturnValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ansca/corona/CoronaView$SendEventListener;->sendEventResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
