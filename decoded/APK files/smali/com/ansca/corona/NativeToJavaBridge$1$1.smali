.class Lcom/ansca/corona/NativeToJavaBridge$1$1;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/NativeToJavaBridge$1;

.field final synthetic val$addressFinal:Landroid/location/Address;

.field final synthetic val$errorMessageFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/NativeToJavaBridge$1;Landroid/location/Address;Ljava/lang/String;)V
    .locals 0

    .line 2711
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$1;

    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    iput-object p3, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$errorMessageFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 2714
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "nearestAddress"

    .line 2715
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz v0, :cond_9

    .line 2718
    :try_start_0
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "street"

    .line 2720
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2723
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2724
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "streetDetail"

    .line 2725
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2728
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2729
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "city"

    .line 2730
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2733
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2734
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "cityDetail"

    .line 2735
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2738
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2739
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "region"

    .line 2740
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2743
    :cond_4
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2744
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "regionDetail"

    .line 2745
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2748
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2749
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "postalCode"

    .line 2750
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2753
    :cond_6
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2754
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "country"

    .line 2755
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2758
    :cond_7
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2759
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "countryCode"

    .line 2760
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2763
    :cond_8
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$1;

    iget v0, v0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$functionListenerFinal:I

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2766
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    .line 2770
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isError"

    .line 2771
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2773
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->val$errorMessageFinal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "errorMessage"

    .line 2774
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2776
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$1;

    iget v0, v0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$functionListenerFinal:I

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2781
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$1$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$1;

    iget v0, v0, Lcom/ansca/corona/NativeToJavaBridge$1;->val$functionListenerFinal:I

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    return-void
.end method
