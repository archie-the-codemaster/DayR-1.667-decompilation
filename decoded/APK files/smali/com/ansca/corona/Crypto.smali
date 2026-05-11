.class public Lcom/ansca/corona/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field public static final ALGORITHM_HMAC_MD4:Ljava/lang/String; = "HmacMD4"

.field public static final ALGORITHM_HMAC_MD5:Ljava/lang/String; = "HmacMD5"

.field public static final ALGORITHM_HMAC_SHA1A:Ljava/lang/String; = "HmacSHA1A"

.field public static final ALGORITHM_HMAC_SHA224A:Ljava/lang/String; = "HmacSHA224A"

.field public static final ALGORITHM_HMAC_SHA256A:Ljava/lang/String; = "HmacSHA256A"

.field public static final ALGORITHM_HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final ALGORITHM_HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"

.field public static final ALGORITHM_MD4:Ljava/lang/String; = "MD4"

.field public static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_SHA1A:Ljava/lang/String; = "SHA1A"

.field public static final ALGORITHM_SHA224A:Ljava/lang/String; = "SHA224A"

.field public static final ALGORITHM_SHA256A:Ljava/lang/String; = "SHA256A"

.field public static final ALGORITHM_SHA384:Ljava/lang/String; = "SHA384"

.field public static final ALGORITHM_SHA512:Ljava/lang/String; = "SHA512"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CalculateDigest(Ljava/lang/String;[B)[B
    .locals 0

    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static CalculateHMAC(Ljava/lang/String;[B[B)[B
    .locals 2

    .line 64
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 65
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RAW"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 66
    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static GetDigestLength(Ljava/lang/String;)I
    .locals 0

    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
