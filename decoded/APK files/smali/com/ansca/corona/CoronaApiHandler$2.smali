.class Lcom/ansca/corona/CoronaApiHandler$2;
.super Ljava/lang/Object;
.source "CoronaApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaApiHandler;->addKeepScreenOnFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaApiHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaApiHandler;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ansca/corona/CoronaApiHandler$2;->this$0:Lcom/ansca/corona/CoronaApiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/ansca/corona/CoronaApiHandler$2;->this$0:Lcom/ansca/corona/CoronaApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaApiHandler;->access$000(Lcom/ansca/corona/CoronaApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method
