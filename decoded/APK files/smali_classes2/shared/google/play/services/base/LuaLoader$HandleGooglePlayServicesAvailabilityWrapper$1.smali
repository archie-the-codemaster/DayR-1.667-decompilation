.class Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper$1;->this$0:Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, v0}, Lcom/ansca/corona/CoronaActivity;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Corona: Developer Error"

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not target the Google Play store, but includes Google Play Services. \n\nThis is adding unnecessary bloat to your app as Google Play Services depends on the Google Play store. \n\nPlease remove Google Play Services from builds that do not target Google Play."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_exit_button:I

    new-instance v2, Lshared/google/play/services/base/OnExitClickListener;

    invoke-direct {v2}, Lshared/google/play/services/base/OnExitClickListener;-><init>()V

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
