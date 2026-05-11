.class Lcom/ansca/corona/CoronaVideoView$VideoViewPreparedTask;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoViewPreparedTask"
.end annotation


# instance fields
.field private fId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p1, p0, Lcom/ansca/corona/CoronaVideoView$VideoViewPreparedTask;->fId:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 466
    iget v0, p0, Lcom/ansca/corona/CoronaVideoView$VideoViewPreparedTask;->fId:I

    invoke-static {p1, v0}, Lcom/ansca/corona/JavaToNativeShim;->videoViewPrepared(Lcom/ansca/corona/CoronaRuntime;I)V

    return-void
.end method
