.class Lcom/ansca/corona/NativeToJavaBridge$ApiLevel21;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel21"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScriptFrom(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3199
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
