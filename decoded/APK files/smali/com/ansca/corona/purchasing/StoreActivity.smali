.class public Lcom/ansca/corona/purchasing/StoreActivity;
.super Landroid/app/Activity;
.source "StoreActivity.java"


# static fields
.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "full_screen"

.field public static final EXTRA_NOOK_APP_EAN:Ljava/lang/String; = "nook_app_ean"


# instance fields
.field private fHasShownStore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 122
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, v0}, Lcom/ansca/corona/purchasing/StoreActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nook_app_ean"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/4 p1, 0x7

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ansca/corona/purchasing/StoreActivity;->setRequestedOrientation(I)V

    .line 66
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "full_screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 69
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 73
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 78
    :goto_0
    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/StoreActivity;->fHasShownStore:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/StoreActivity;->fHasShownStore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/StoreActivity;->fHasShownStore:Z

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.bn.sdk.shop.details"

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nook_app_ean"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "product_details_ean"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/ansca/corona/purchasing/StoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
