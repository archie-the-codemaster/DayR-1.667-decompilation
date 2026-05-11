.class public Lcom/ansca/corona/CoronaData$String;
.super Lcom/ansca/corona/CoronaData$Value;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "String"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$String$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ansca/corona/CoronaData$String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/ansca/corona/CoronaData$String;


# instance fields
.field private fValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 587
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$String;->EMPTY:Lcom/ansca/corona/CoronaData$String;

    .line 590
    new-instance v0, Lcom/ansca/corona/CoronaData$String$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$String$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$String;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 596
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Value;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 600
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$String;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "string"

    const-string v1, ""

    .line 637
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    iget-object v2, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 649
    iget-object p2, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
