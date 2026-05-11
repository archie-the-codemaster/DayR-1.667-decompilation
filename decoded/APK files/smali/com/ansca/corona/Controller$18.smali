.class Lcom/ansca/corona/Controller$18;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showSendSmsWindow(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$smsSettings:Lcom/ansca/corona/SmsSettings;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/SmsSettings;)V
    .locals 0

    .line 1794
    iput-object p1, p0, Lcom/ansca/corona/Controller$18;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$18;->val$smsSettings:Lcom/ansca/corona/SmsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1796
    iget-object v0, p0, Lcom/ansca/corona/Controller$18;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1800
    :cond_0
    monitor-enter p0

    .line 1801
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller$18;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$18;->val$smsSettings:Lcom/ansca/corona/SmsSettings;

    invoke-interface {v0, v1}, Lcom/ansca/corona/listeners/CoronaShowApiListener;->showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V

    .line 1802
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
