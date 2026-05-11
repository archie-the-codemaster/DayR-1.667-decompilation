.class public Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioByteBufferHolder"
.end annotation


# instance fields
.field myBuffer:Ljava/nio/ByteBuffer;

.field myValidBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 642
    iput v0, p0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myValidBytes:I

    .line 646
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
