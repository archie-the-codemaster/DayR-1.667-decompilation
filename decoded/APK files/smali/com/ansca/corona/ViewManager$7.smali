.class Lcom/ansca/corona/ViewManager$7;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextReturnKey(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$imeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;Ljava/lang/String;I)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$7;->this$0:Lcom/ansca/corona/ViewManager;

    iput-object p2, p0, Lcom/ansca/corona/ViewManager$7;->val$imeType:Ljava/lang/String;

    iput p3, p0, Lcom/ansca/corona/ViewManager$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$7;->val$imeType:Ljava/lang/String;

    const-string v1, "go"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$7;->val$imeType:Ljava/lang/String;

    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$7;->val$imeType:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$7;->val$imeType:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$7;->val$imeType:Ljava/lang/String;

    const-string v1, "send"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    .line 429
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$7;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaEditText;

    iget v3, p0, Lcom/ansca/corona/ViewManager$7;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaEditText;

    if-nez v1, :cond_5

    return-void

    .line 432
    :cond_5
    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaEditText;->setImeOptions(I)V

    return-void
.end method
