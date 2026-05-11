.class public Lcom/ansca/corona/CoronaData$Boolean;
.super Lcom/ansca/corona/CoronaData$Value;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Boolean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ansca/corona/CoronaData$Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FALSE:Lcom/ansca/corona/CoronaData$Boolean;

.field public static final TRUE:Lcom/ansca/corona/CoronaData$Boolean;


# instance fields
.field private fValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 369
    new-instance v0, Lcom/ansca/corona/CoronaData$Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Boolean;-><init>(Z)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Boolean;->TRUE:Lcom/ansca/corona/CoronaData$Boolean;

    .line 372
    new-instance v0, Lcom/ansca/corona/CoronaData$Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Boolean;-><init>(Z)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Boolean;->FALSE:Lcom/ansca/corona/CoronaData$Boolean;

    .line 375
    new-instance v0, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Boolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Value;-><init>()V

    .line 382
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    return-void
.end method

.method public static from(Z)Lcom/ansca/corona/CoronaData$Boolean;
    .locals 0

    if-eqz p0, :cond_0

    .line 452
    sget-object p0, Lcom/ansca/corona/CoronaData$Boolean;->TRUE:Lcom/ansca/corona/CoronaData$Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ansca/corona/CoronaData$Boolean;->FALSE:Lcom/ansca/corona/CoronaData$Boolean;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Z)Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getValue()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    return v0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "boolean"

    const-string v1, ""

    .line 428
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 440
    iget-boolean p2, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
