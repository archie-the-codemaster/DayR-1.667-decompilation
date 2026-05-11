.class Lcom/ansca/corona/CoronaSensorManager$1$1;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSensorManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$1;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 154
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    .line 171
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->isNaturalOrientationPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0, p1}, Lcom/ansca/corona/CoronaSensorManager;->access$602(Lcom/ansca/corona/CoronaSensorManager;F)F

    .line 181
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object p1, p1, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {p1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object p1, p1, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {p1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 182
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object p1, p1, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {p1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/LocationTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$1$1;->this$1:Lcom/ansca/corona/CoronaSensorManager$1;

    iget-object v1, v1, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$600(Lcom/ansca/corona/CoronaSensorManager;)F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/events/LocationTask;-><init>(D)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 185
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
