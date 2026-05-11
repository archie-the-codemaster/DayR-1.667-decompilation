.class Lcom/ansca/corona/ViewManager$27;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addWebView(IIIIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$autoCloseEnabled:Z

.field final synthetic val$height:I

.field final synthetic val$id:I

.field final synthetic val$isPopup:Z

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ZIZIIII)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    iput-boolean p2, p0, Lcom/ansca/corona/ViewManager$27;->val$isPopup:Z

    iput p3, p0, Lcom/ansca/corona/ViewManager$27;->val$id:I

    iput-boolean p4, p0, Lcom/ansca/corona/ViewManager$27;->val$autoCloseEnabled:Z

    iput p5, p0, Lcom/ansca/corona/ViewManager$27;->val$width:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$27;->val$height:I

    iput p7, p0, Lcom/ansca/corona/ViewManager$27;->val$left:I

    iput p8, p0, Lcom/ansca/corona/ViewManager$27;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1095
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1100
    :cond_0
    iget-boolean v0, p0, Lcom/ansca/corona/ViewManager$27;->val$isPopup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$800(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1106
    :cond_2
    new-instance v1, Lcom/ansca/corona/CoronaWebView;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/CoronaWebView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    .line 1107
    iget v2, p0, Lcom/ansca/corona/ViewManager$27;->val$id:I

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaWebView;->setId(I)V

    .line 1108
    new-instance v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaWebView;->setTag(Ljava/lang/Object;)V

    .line 1109
    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$27;->val$isPopup:Z

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaWebView;->setBackKeySupported(Z)V

    .line 1110
    iget-boolean v2, p0, Lcom/ansca/corona/ViewManager$27;->val$autoCloseEnabled:Z

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaWebView;->setAutoCloseEnabled(Z)V

    .line 1114
    iget v2, p0, Lcom/ansca/corona/ViewManager$27;->val$width:I

    if-lez v2, :cond_4

    iget v3, p0, Lcom/ansca/corona/ViewManager$27;->val$height:I

    if-gtz v3, :cond_3

    goto :goto_1

    .line 1121
    :cond_3
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/ansca/corona/ViewManager$27;->val$left:I

    iget v6, p0, Lcom/ansca/corona/ViewManager$27;->val$top:I

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_2

    .line 1115
    :cond_4
    :goto_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 1117
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1123
    :goto_2
    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1124
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaWebView;->bringToFront()V

    .line 1127
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v0}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1128
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
