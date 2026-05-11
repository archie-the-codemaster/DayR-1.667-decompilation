.class public Lcom/ansca/corona/version/android8/AndroidVersionSpecific;
.super Ljava/lang/Object;
.source "AndroidVersionSpecific.java"

# interfaces
.implements Lcom/ansca/corona/version/IAndroidVersionSpecific;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apiVersion()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public audioChannelMono()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public inputTypeFlagsNoSuggestions()I
    .locals 1

    const/high16 v0, 0x80000

    return v0
.end method
