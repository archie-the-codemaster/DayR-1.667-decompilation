.class Lcom/ansca/corona/CoronaActivity$ImagePickerEventGenerator;
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
    name = "ImagePickerEventGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 2750
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$ImagePickerEventGenerator;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$1;)V
    .locals 0

    .line 2750
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaActivity$ImagePickerEventGenerator;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    return-void
.end method


# virtual methods
.method public generateEvent(Ljava/lang/String;)Lcom/ansca/corona/events/MediaPickerTask;
    .locals 1

    .line 2753
    new-instance v0, Lcom/ansca/corona/events/ImagePickerTask;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/ImagePickerTask;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;
    .locals 0

    .line 2758
    new-instance p2, Lcom/ansca/corona/events/ImagePickerTask;

    invoke-direct {p2, p1}, Lcom/ansca/corona/events/ImagePickerTask;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
