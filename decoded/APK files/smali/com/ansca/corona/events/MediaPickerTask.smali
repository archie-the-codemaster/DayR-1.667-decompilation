.class public abstract Lcom/ansca/corona/events/MediaPickerTask;
.super Ljava/lang/Object;
.source "MediaPickerTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field protected fSelectedMediaFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/ansca/corona/events/MediaPickerTask;->fSelectedMediaFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 23
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/events/MediaPickerTask;->fSelectedMediaFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
.end method
