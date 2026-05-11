.class Lcom/ansca/corona/Controller$ApiLevel21;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel21"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertDialogBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 2277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 2248
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel14;->isDeviceDefaultThemeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 2251
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030226

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 2237
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel21;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 2262
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel14;->isDeviceDefaultThemeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 2265
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x103023a

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
