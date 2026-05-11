.class public Lcom/google/android/vending/licensing/APKExpansionPolicy;
.super Lcom/google/android/vending/licensing/Policy;
.source "APKExpansionPolicy.java"


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field public static final MAIN_FILE_URL_INDEX:I = 0x0

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final PATCH_FILE_URL_INDEX:I = 0x1

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "APKExpansionPolicy"


# instance fields
.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/google/android/vending/licensing/Policy;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 84
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    const-string v1, "CoronaProvider.licensing.google.lualoader"

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 86
    new-instance v1, Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-direct {v1, p1, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    .line 87
    iget-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastResponse"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x123

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 89
    iget-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string p2, "0"

    const-string v0, "validityTimestamp"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 91
    iget-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v0, "retryUntil"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 92
    iget-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v0, "maxRetries"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 93
    iget-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v0, "retryCount"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    return-void
.end method

.method private setLastResponse(I)V
    .locals 2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 178
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 179
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "lastResponse"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 2

    .line 259
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v0, "Licence retry count (GR) missing, grace period disabled"

    .line 262
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 264
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string p1, "0"

    .line 267
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 268
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryCount(J)V
    .locals 1

    .line 189
    iput-wide p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 190
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "retryCount"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 2

    .line 233
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v0, "License retry timestamp (GT) missing, grace period disabled"

    .line 236
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string p1, "0"

    .line 241
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 242
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 4

    .line 207
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v0, "License validity timestamp (VT) missing, caching for a minute"

    .line 210
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 215
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 216
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    iget v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x100

    if-ne v2, v5, :cond_0

    .line 288
    iget-wide v5, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    cmp-long v2, v0, v5

    if-gtz v2, :cond_3

    return v3

    :cond_0
    const/16 v5, 0x123

    if-ne v2, v5, :cond_3

    .line 292
    iget-wide v5, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    .line 297
    iget-wide v5, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    iget-wide v5, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    cmp-long v2, v0, v5

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v4
.end method

.method public getMaxRetries()J
    .locals 2

    .line 272
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 5

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    :goto_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_7

    .line 134
    invoke-virtual {p0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->clearSavedExpansionFiles()V

    .line 136
    iget-object p2, p2, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 137
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 139
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "VT"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "GT"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "GR"

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "FILE_URL"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 149
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionURL(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "FILE_NAME"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x9

    if-eqz v2, :cond_6

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 152
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileName(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "FILE_SIZE"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 155
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileSize(IJ)V

    goto/16 :goto_1

    :cond_7
    const/16 p2, 0x231

    if-ne p1, p2, :cond_8

    const-string p2, "0"

    .line 160
    invoke-direct {p0, p2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 165
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setLastResponse(I)V

    .line 166
    iget-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method

.method public resetPolicy()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const/16 v1, 0x123

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastResponse"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    .line 102
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 105
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method
