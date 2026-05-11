.class final Lplugin/gpgs/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultHandler:Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lplugin/gpgs/Utils$2;->val$resultHandler:Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x2711

    if-ne p3, v0, :cond_0

    .line 756
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Utils$2$1;

    invoke-direct {v1, p0}, Lplugin/gpgs/Utils$2$1;-><init>(Lplugin/gpgs/Utils$2;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 763
    :cond_0
    iget-object v0, p0, Lplugin/gpgs/Utils$2;->val$resultHandler:Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;->onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V

    return-void
.end method
