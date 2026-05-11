.class Lcom/ansca/corona/CoronaRuntime$ApiLevel9;
.super Ljava/lang/Object;
.source "CoronaRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel9"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeLibraryDirectoryFrom(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object p0

    .line 588
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
