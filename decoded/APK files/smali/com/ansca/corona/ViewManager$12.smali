.class Lcom/ansca/corona/ViewManager$12;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewFocus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$focus:Z

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$12;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$12;->val$focus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 531
    iget v0, p0, Lcom/ansca/corona/ViewManager$12;->val$id:I

    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v1, v2, v0}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "input_method"

    if-eqz v0, :cond_1

    .line 534
    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$12;->val$focus:Z

    if-eqz v2, :cond_1

    .line 536
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->requestFocus()Z

    .line 539
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    .line 544
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$500(Lcom/ansca/corona/ViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 551
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 552
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$500(Lcom/ansca/corona/ViewManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_1
    return-void
.end method
