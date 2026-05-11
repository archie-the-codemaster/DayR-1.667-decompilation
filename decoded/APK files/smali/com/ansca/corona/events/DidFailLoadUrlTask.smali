.class public Lcom/ansca/corona/events/DidFailLoadUrlTask;
.super Ljava/lang/Object;
.source "DidFailLoadUrlTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myDescription:Ljava/lang/String;

.field private myErrorCode:I

.field private myFailingUrl:Ljava/lang/String;

.field private myId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myId:I

    .line 21
    iput-object p2, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myFailingUrl:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myDescription:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myErrorCode:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4

    .line 28
    iget v0, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myId:I

    iget-object v1, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myFailingUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myDescription:Ljava/lang/String;

    iget v3, p0, Lcom/ansca/corona/events/DidFailLoadUrlTask;->myErrorCode:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->webViewDidFailLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
