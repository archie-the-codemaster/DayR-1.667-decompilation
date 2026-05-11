.class public Lcom/ansca/corona/events/AlertTask;
.super Ljava/lang/Object;
.source "AlertTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private mCancelled:Z

.field private myButtonIndex:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/ansca/corona/events/AlertTask;->myButtonIndex:I

    .line 20
    iput-boolean p2, p0, Lcom/ansca/corona/events/AlertTask;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 25
    iget v0, p0, Lcom/ansca/corona/events/AlertTask;->myButtonIndex:I

    iget-boolean v1, p0, Lcom/ansca/corona/events/AlertTask;->mCancelled:Z

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->alertCallback(Lcom/ansca/corona/CoronaRuntime;IZ)V

    return-void
.end method
