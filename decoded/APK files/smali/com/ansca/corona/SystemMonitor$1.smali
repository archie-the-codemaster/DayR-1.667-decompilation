.class Lcom/ansca/corona/SystemMonitor$1;
.super Ljava/lang/Object;
.source "SystemMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/SystemMonitor;->isLowOnMemory()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/SystemMonitor;


# direct methods
.method constructor <init>(Lcom/ansca/corona/SystemMonitor;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor$1;->this$0:Lcom/ansca/corona/SystemMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor$1;->this$0:Lcom/ansca/corona/SystemMonitor;

    invoke-static {v0}, Lcom/ansca/corona/SystemMonitor;->access$000(Lcom/ansca/corona/SystemMonitor;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor$1;->this$0:Lcom/ansca/corona/SystemMonitor;

    invoke-static {v0}, Lcom/ansca/corona/SystemMonitor;->access$000(Lcom/ansca/corona/SystemMonitor;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->memoryWarningEvent(Lcom/ansca/corona/CoronaRuntime;)V

    :cond_0
    return-void
.end method
