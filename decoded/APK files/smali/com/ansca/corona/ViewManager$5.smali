.class Lcom/ansca/corona/ViewManager$5;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewPassword(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$isPassword:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$5;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$5;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$5;->val$isPassword:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$5;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/CoronaEditText;

    iget v2, p0, Lcom/ansca/corona/ViewManager$5;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$5;->val$isPassword:Z

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setTextViewPassword(Z)V

    return-void
.end method
