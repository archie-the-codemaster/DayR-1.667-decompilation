.class public Lcom/ansca/corona/events/ResizeTask;
.super Ljava/lang/Object;
.source "ResizeTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/ansca/corona/JavaToNativeShim;->resizeEvent(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method
