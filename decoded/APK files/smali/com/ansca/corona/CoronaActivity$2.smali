.class Lcom/ansca/corona/CoronaActivity$2;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 1920
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity;->access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->applicationOpenEvent(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method
