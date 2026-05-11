.class Lcom/ansca/corona/Controller$ApiLevel14;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel14"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertDialogBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 2202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 2173
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel14;->isDeviceDefaultThemeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 2176
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 2162
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel14;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 2187
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel14;->isDeviceDefaultThemeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 2190
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static isDeviceDefaultThemeAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 2211
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2212
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Theme.Dialog.Alert"

    .line 2214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
