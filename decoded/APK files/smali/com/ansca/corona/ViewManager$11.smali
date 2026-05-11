.class Lcom/ansca/corona/ViewManager$11;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewSize(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$size:F


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IF)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$11;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$11;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$11;->val$size:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$11;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/CoronaEditText;

    iget v2, p0, Lcom/ansca/corona/ViewManager$11;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    iget v1, p0, Lcom/ansca/corona/ViewManager$11;->val$size:F

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setTextViewSize(F)V

    return-void
.end method
