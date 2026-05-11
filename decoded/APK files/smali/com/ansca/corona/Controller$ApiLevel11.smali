.class Lcom/ansca/corona/Controller$ApiLevel11;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel11"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertDialogBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 2139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 2118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 2109
    invoke-static {p0}, Lcom/ansca/corona/Controller$ApiLevel11;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 2127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getSystemUiVisibility(Landroid/view/View;)I
    .locals 0

    .line 2100
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    return p0
.end method

.method public static setSystemUiVisibility(Landroid/view/View;I)V
    .locals 0

    .line 2096
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
