.class public Lcom/ansca/corona/events/WebHistoryUpdatedTask;
.super Ljava/lang/Object;
.source "WebHistoryUpdatedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fCanGoBack:Z

.field private fCanGoForward:Z

.field private fId:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/ansca/corona/events/WebHistoryUpdatedTask;->fId:I

    .line 21
    iput-boolean p2, p0, Lcom/ansca/corona/events/WebHistoryUpdatedTask;->fCanGoBack:Z

    .line 22
    iput-boolean p3, p0, Lcom/ansca/corona/events/WebHistoryUpdatedTask;->fCanGoForward:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 27
    iget v0, p0, Lcom/ansca/corona/events/WebHistoryUpdatedTask;->fId:I

    iget-boolean v1, p0, Lcom/ansca/corona/events/WebHistoryUpdatedTask;->fCanGoBack:Z

    iget-boolean v2, p0, Lcom/ansca/corona/events/WebHistoryUpdatedTask;->fCanGoForward:Z

    invoke-static {p1, v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->webViewHistoryUpdated(Lcom/ansca/corona/CoronaRuntime;IZZ)V

    return-void
.end method
