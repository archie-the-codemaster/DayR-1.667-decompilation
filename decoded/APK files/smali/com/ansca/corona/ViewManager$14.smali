.class Lcom/ansca/corona/ViewManager$14;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewFont(ILjava/lang/String;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$fontName:Ljava/lang/String;

.field final synthetic val$fontSize:F

.field final synthetic val$id:I

.field final synthetic val$isBold:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;FZ)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$14;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$14;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$14;->val$fontName:Ljava/lang/String;

    iput p4, p0, Lcom/ansca/corona/ViewManager$14;->val$fontSize:F

    iput-boolean p5, p0, Lcom/ansca/corona/ViewManager$14;->val$isBold:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$14;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/CoronaEditText;

    iget v2, p0, Lcom/ansca/corona/ViewManager$14;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$14;->val$fontName:Ljava/lang/String;

    iget v2, p0, Lcom/ansca/corona/ViewManager$14;->val$fontSize:F

    iget-boolean v3, p0, Lcom/ansca/corona/ViewManager$14;->val$isBold:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/CoronaEditText;->setTextViewFont(Ljava/lang/String;FZ)V

    return-void
.end method
