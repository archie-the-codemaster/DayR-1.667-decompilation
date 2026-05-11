.class Lcom/ansca/corona/Controller$14;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->closeNativeActivityIndicator()V
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

    .line 1538
    iput-object p1, p0, Lcom/ansca/corona/Controller$14;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1541
    iget-object v0, p0, Lcom/ansca/corona/Controller$14;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v0

    .line 1542
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$14;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/ansca/corona/Controller$14;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ActivityIndicatorDialog;->dismiss()V

    .line 1544
    iget-object v1, p0, Lcom/ansca/corona/Controller$14;->this$0:Lcom/ansca/corona/Controller;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ansca/corona/Controller;->access$702(Lcom/ansca/corona/Controller;Lcom/ansca/corona/ActivityIndicatorDialog;)Lcom/ansca/corona/ActivityIndicatorDialog;

    .line 1546
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
