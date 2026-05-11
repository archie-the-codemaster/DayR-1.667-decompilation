.class final Lcom/ansca/corona/NativeToJavaBridge$2;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callRequestLocationAsync(Lcom/ansca/corona/CoronaRuntime;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field final synthetic val$functionListenerFinal:I

.field final synthetic val$locationFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;I)V
    .locals 0

    .line 2817
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$locationFinal:Ljava/lang/String;

    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    iput p3, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$functionListenerFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2820
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$locationFinal:Ljava/lang/String;

    invoke-static {v0}, Lcom/ansca/corona/NativeToJavaBridge;->access$000(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 2822
    iget-object v1, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2824
    new-instance v9, Lcom/ansca/corona/maps/MapRequestLocationTask;

    iget v3, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$functionListenerFinal:I

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$locationFinal:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ansca/corona/maps/MapRequestLocationTask;-><init>(IDDLjava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 2826
    :cond_0
    new-instance v0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;

    iget v2, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$functionListenerFinal:I

    iget-object v3, p0, Lcom/ansca/corona/NativeToJavaBridge$2;->val$locationFinal:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v2, v4, v3}, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    :goto_0
    return-void
.end method
