.class Lcom/ansca/corona/CoronaActivity$VideoPickerEventGenerator;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPickerEventGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 2763
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$VideoPickerEventGenerator;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$1;)V
    .locals 0

    .line 2763
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaActivity$VideoPickerEventGenerator;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    return-void
.end method


# virtual methods
.method public generateEvent(Ljava/lang/String;)Lcom/ansca/corona/events/MediaPickerTask;
    .locals 1

    .line 2766
    new-instance v0, Lcom/ansca/corona/events/VideoPickerTask;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/VideoPickerTask;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;
    .locals 1

    .line 2771
    new-instance v0, Lcom/ansca/corona/events/VideoPickerTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ansca/corona/events/VideoPickerTask;-><init>(Ljava/lang/String;IJ)V

    return-object v0
.end method
