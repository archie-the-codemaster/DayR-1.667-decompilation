.class Lplugin/gpgs/Utils$1$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Utils$1;->onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Utils$1;


# direct methods
.method constructor <init>(Lplugin/gpgs/Utils$1;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lplugin/gpgs/Utils$1$1;->this$0:Lplugin/gpgs/Utils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 738
    invoke-static {}, Lplugin/gpgs/Connector;->getInstance()Lplugin/gpgs/Connector;

    move-result-object p1

    invoke-virtual {p1}, Lplugin/gpgs/Connector;->disconnect()V

    .line 739
    invoke-static {}, Lplugin/gpgs/Connector;->getInstance()Lplugin/gpgs/Connector;

    move-result-object p1

    invoke-virtual {p1}, Lplugin/gpgs/Connector;->signOut()V

    return-void
.end method
