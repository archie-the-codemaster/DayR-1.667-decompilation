.class public Lcom/ansca/corona/CoronaBeacon;
.super Ljava/lang/Object;
.source "CoronaBeacon.java"


# static fields
.field public static final DELIVERY:Ljava/lang/String; = "delivery"

.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field public static final REQUEST:Ljava/lang/String; = "request"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendDeviceDataToBeacon(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
