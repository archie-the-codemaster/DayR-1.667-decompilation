.class Lshared/google/play/services/base/OnExitClickListener$1;
.super Ljava/lang/Object;
.source "OnExitClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/OnExitClickListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/OnExitClickListener;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/OnExitClickListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lshared/google/play/services/base/OnExitClickListener$1;->this$0:Lshared/google/play/services/base/OnExitClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->finish()V

    :cond_0
    return-void
.end method
