.class Lcom/ansca/corona/CoronaSensorManager$2;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSensorManager;->stopType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;

.field final synthetic val$eventType:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSensorManager;I)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    iput p2, p0, Lcom/ansca/corona/CoronaSensorManager$2;->val$eventType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 919
    iget v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->val$eventType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 935
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 936
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$402(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 937
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager;->access$602(Lcom/ansca/corona/CoronaSensorManager;F)F

    goto :goto_0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 942
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 943
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$702(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    goto :goto_0

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$100(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->stop()V

    goto :goto_0

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$2;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$000(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->stop()V

    :cond_4
    :goto_0
    return-void
.end method
