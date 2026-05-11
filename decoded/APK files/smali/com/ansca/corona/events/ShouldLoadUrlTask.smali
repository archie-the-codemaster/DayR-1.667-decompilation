.class public Lcom/ansca/corona/events/ShouldLoadUrlTask;
.super Ljava/lang/Object;
.source "ShouldLoadUrlTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myId:I

.field private mySourceType:I

.field private myUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/ansca/corona/events/ShouldLoadUrlTask;->myId:I

    .line 20
    iput-object p2, p0, Lcom/ansca/corona/events/ShouldLoadUrlTask;->myUrl:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/ansca/corona/events/ShouldLoadUrlTask;->mySourceType:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 26
    iget v0, p0, Lcom/ansca/corona/events/ShouldLoadUrlTask;->myId:I

    iget-object v1, p0, Lcom/ansca/corona/events/ShouldLoadUrlTask;->myUrl:Ljava/lang/String;

    iget v2, p0, Lcom/ansca/corona/events/ShouldLoadUrlTask;->mySourceType:I

    invoke-static {p1, v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->webViewShouldLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;I)V

    return-void
.end method
