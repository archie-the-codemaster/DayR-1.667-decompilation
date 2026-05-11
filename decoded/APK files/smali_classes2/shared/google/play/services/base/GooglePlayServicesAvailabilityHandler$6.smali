.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$6;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->dismissPresentedAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

.field final synthetic val$dialogToDismiss:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Landroid/app/AlertDialog;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$6;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iput-object p2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$6;->val$dialogToDismiss:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 950
    iget-object v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$6;->val$dialogToDismiss:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
