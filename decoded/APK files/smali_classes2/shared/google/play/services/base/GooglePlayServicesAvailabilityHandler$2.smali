.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$2;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getStoreErrorDialog(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/storage/PackageState;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;I)V
    .locals 0

    .line 385
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$2;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iput p2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 389
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "package"

    const-string v2, "com.android.vending"

    .line 393
    invoke-static {v1, v2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 395
    iget v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$2;->val$requestCode:I

    invoke-virtual {p1, p2, v0}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
