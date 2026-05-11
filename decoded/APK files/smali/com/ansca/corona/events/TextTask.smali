.class public Lcom/ansca/corona/events/TextTask;
.super Ljava/lang/Object;
.source "TextTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myEditTextId:I

.field private myHasFocus:Z

.field private myIsDone:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/ansca/corona/events/TextTask;->myEditTextId:I

    .line 23
    iput-boolean p2, p0, Lcom/ansca/corona/events/TextTask;->myHasFocus:Z

    .line 24
    iput-boolean p3, p0, Lcom/ansca/corona/events/TextTask;->myIsDone:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 29
    iget v0, p0, Lcom/ansca/corona/events/TextTask;->myEditTextId:I

    iget-boolean v1, p0, Lcom/ansca/corona/events/TextTask;->myHasFocus:Z

    iget-boolean v2, p0, Lcom/ansca/corona/events/TextTask;->myIsDone:Z

    invoke-static {p1, v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->textEvent(Lcom/ansca/corona/CoronaRuntime;IZZ)V

    return-void
.end method
