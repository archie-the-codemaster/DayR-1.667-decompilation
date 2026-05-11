.class final Lcom/ansca/corona/NativeToJavaBridge$1;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callRequestNearestAddressFromCoordinates(Lcom/ansca/corona/CoronaRuntime;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field final synthetic val$functionListenerFinal:I

.field final synthetic val$latitudeFinal:D

.field final synthetic val$longitudeFinal:D


# direct methods
.method constructor <init>(DDILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V
    .locals 0

    .line 2684
    iput-wide p1, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$latitudeFinal:D

    iput-wide p3, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$longitudeFinal:D

    iput p5, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$functionListenerFinal:I

    iput-object p6, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 2694
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 2695
    iget-wide v2, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$latitudeFinal:D

    iget-wide v4, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$longitudeFinal:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2696
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 2697
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2701
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Address not found for given coordinates."

    .line 2711
    :cond_1
    new-instance v2, Lcom/ansca/corona/NativeToJavaBridge$1$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/ansca/corona/NativeToJavaBridge$1$1;-><init>(Lcom/ansca/corona/NativeToJavaBridge$1;Landroid/location/Address;Ljava/lang/String;)V

    .line 2785
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method
