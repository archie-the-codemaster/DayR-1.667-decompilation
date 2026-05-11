.class public Lcom/ansca/corona/events/FinishedLoadUrlTask;
.super Ljava/lang/Object;
.source "FinishedLoadUrlTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fId:I

.field private fUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/ansca/corona/events/FinishedLoadUrlTask;->fId:I

    .line 20
    iput-object p2, p0, Lcom/ansca/corona/events/FinishedLoadUrlTask;->fUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 25
    iget v0, p0, Lcom/ansca/corona/events/FinishedLoadUrlTask;->fId:I

    iget-object v1, p0, Lcom/ansca/corona/events/FinishedLoadUrlTask;->fUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->webViewFinishedLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V

    return-void
.end method
