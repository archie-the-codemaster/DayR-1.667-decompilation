.class Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupActivityResultHandler"
.end annotation


# instance fields
.field private fPopupName:Ljava/lang/String;

.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V
    .locals 0

    .line 3367
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3368
    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->fPopupName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity$1;)V
    .locals 0

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 3383
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 3385
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {p1}, Lcom/ansca/corona/CoronaActivity;->access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3393
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {p1}, Lcom/ansca/corona/CoronaActivity;->access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3395
    iget-object p2, p0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;->fPopupName:Ljava/lang/String;

    .line 3396
    new-instance p3, Lcom/ansca/corona/events/RunnableEvent;

    new-instance p4, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;

    invoke-direct {p4, p0, p2}, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler$1;-><init>(Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    :cond_1
    return-void
.end method
