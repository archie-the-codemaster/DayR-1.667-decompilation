.class Lshared/google/play/services/base/OnExitClickListener;
.super Ljava/lang/Object;
.source "OnExitClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 18
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    new-instance p2, Lshared/google/play/services/base/OnExitClickListener$1;

    invoke-direct {p2, p0}, Lshared/google/play/services/base/OnExitClickListener$1;-><init>(Lshared/google/play/services/base/OnExitClickListener;)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
