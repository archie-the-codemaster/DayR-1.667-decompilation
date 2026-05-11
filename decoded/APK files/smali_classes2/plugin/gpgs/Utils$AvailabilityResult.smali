.class Lplugin/gpgs/Utils$AvailabilityResult;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvailabilityResult"
.end annotation


# instance fields
.field code:I

.field errorMessage:Ljava/lang/String;

.field isError:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
