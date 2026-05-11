.class public Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
.super Ljava/lang/Object;
.source "StoreTransactionResultSettings.java"


# instance fields
.field private fErrorMessage:Ljava/lang/String;

.field private fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field private fOriginalReceipt:Ljava/lang/String;

.field private fOriginalTransactionStringId:Ljava/lang/String;

.field private fOriginalTransactionTime:Ljava/util/Date;

.field private fProductName:Ljava/lang/String;

.field private fReceipt:Ljava/lang/String;

.field private fSignature:Ljava/lang/String;

.field private fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field private fTransactionStringId:Ljava/lang/String;

.field private fTransactionTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 52
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorMessage:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fProductName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fSignature:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fReceipt:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionStringId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    .line 59
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalReceipt:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionStringId:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    return-object v0
.end method

.method public getOriginalReceipt()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTransactionStringId()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTransactionTime()Ljava/util/Date;
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/ansca/corona/purchasing/StoreTransactionState;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

    return-object v0
.end method

.method public getTransactionStringId()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionTime()Ljava/util/Date;
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public hasOriginalTransactionTime()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransactionTime()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V
    .locals 0

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    return-void
.end method

.method public setOriginalReceipt(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalReceipt:Ljava/lang/String;

    return-void
.end method

.method public setOriginalTransactionStringId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionStringId:Ljava/lang/String;

    return-void
.end method

.method public setOriginalTransactionTime(Ljava/util/Date;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fProductName:Ljava/lang/String;

    return-void
.end method

.method public setReceipt(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fReceipt:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fSignature:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V
    .locals 0

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

    return-void
.end method

.method public setTransactionStringId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionStringId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionTime(Ljava/util/Date;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    return-void
.end method
