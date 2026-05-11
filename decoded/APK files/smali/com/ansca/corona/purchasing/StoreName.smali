.class public Lcom/ansca/corona/purchasing/StoreName;
.super Ljava/lang/Object;
.source "StoreName.java"


# static fields
.field public static final AMAZON:Ljava/lang/String; = "amazon"

.field public static final GOOGLE:Ljava/lang/String; = "google"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final NOOK:Ljava/lang/String; = "nook"

.field public static final SAMSUNG:Ljava/lang/String; = "samsung"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.android.vending"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.google.android.feedback"

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.amazon.venezia"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "amazon"

    goto :goto_2

    :cond_2
    const-string v0, "com.sec.android.app.samsungapps"

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "samsung"

    goto :goto_2

    :cond_3
    const-string p0, "unknown"

    goto :goto_2

    :cond_4
    :goto_0
    const-string p0, "google"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, "none"

    :goto_2
    return-object p0
.end method

.method public static isNotValid(Ljava/lang/String;)Z
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreName;->isValid(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "google"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "amazon"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nook"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "samsung"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
