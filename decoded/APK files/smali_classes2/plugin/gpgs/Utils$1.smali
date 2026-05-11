.class final Lplugin/gpgs/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$luaListener:Ljava/lang/Integer;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lplugin/gpgs/Utils$1;->val$luaListener:Ljava/lang/Integer;

    iput-object p2, p0, Lplugin/gpgs/Utils$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 3

    .line 726
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 727
    iget-object p2, p0, Lplugin/gpgs/Utils$1;->val$luaListener:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lplugin/gpgs/Utils$1;->val$name:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 728
    invoke-static {p2}, Lplugin/gpgs/LuaUtils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p2

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-eq p3, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 731
    :goto_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 733
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "errorCode"

    invoke-virtual {p2, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "errorMessage"

    invoke-virtual {p2, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p4, 0x2711

    if-ne p3, p4, :cond_1

    .line 736
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance p3, Lplugin/gpgs/Utils$1$1;

    invoke-direct {p3, p0}, Lplugin/gpgs/Utils$1$1;-><init>(Lplugin/gpgs/Utils$1;)V

    invoke-virtual {p1, p3}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 744
    :cond_1
    iget-object p1, p0, Lplugin/gpgs/Utils$1;->val$luaListener:Ljava/lang/Integer;

    invoke-static {p1, p2, v0}, Lplugin/gpgs/LuaUtils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    :cond_2
    return-void
.end method
