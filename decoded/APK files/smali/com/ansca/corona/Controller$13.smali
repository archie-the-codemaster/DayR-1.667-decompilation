.class Lcom/ansca/corona/Controller$13;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showNativeActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1498
    iget-object v0, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v0

    .line 1499
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$300(Lcom/ansca/corona/Controller;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1501
    monitor-exit v0

    return-void

    .line 1505
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1507
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const v2, 0x1030239

    goto :goto_0

    .line 1510
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    const v2, 0x103006f

    goto :goto_0

    :cond_2
    const v2, 0x103000b

    .line 1517
    :goto_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1518
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    new-instance v2, Lcom/ansca/corona/ActivityIndicatorDialog;

    invoke-direct {v2, v3}, Lcom/ansca/corona/ActivityIndicatorDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/ansca/corona/Controller;->access$702(Lcom/ansca/corona/Controller;Lcom/ansca/corona/ActivityIndicatorDialog;)Lcom/ansca/corona/ActivityIndicatorDialog;

    .line 1519
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ansca/corona/ActivityIndicatorDialog;->setCancelable(Z)V

    .line 1523
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ActivityIndicatorDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1524
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ActivityIndicatorDialog;->show()V

    .line 1526
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
