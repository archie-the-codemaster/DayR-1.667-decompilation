.class public Lcom/google/android/vending/licensing/StrictPolicy;
.super Lcom/google/android/vending/licensing/Policy;
.source "StrictPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictPolicy"


# instance fields
.field private mLastResponse:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/android/vending/licensing/Policy;-><init>()V

    const/16 v0, 0x123

    .line 50
    iput v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 4

    const/16 v0, 0x100

    if-ne p1, v0, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/google/android/vending/licensing/StrictPolicy;->clearSavedExpansionFiles()V

    .line 65
    iget-object p2, p2, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/vending/licensing/StrictPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 66
    iput p1, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    .line 67
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "FILE_URL"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 71
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/vending/licensing/StrictPolicy;->setExpansionURL(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "FILE_NAME"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x9

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 74
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/vending/licensing/StrictPolicy;->setExpansionFileName(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "FILE_SIZE"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 77
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/vending/licensing/StrictPolicy;->setExpansionFileSize(IJ)V

    goto :goto_0

    :cond_3
    return-void
.end method
