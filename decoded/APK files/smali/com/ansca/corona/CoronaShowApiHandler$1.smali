.class Lcom/ansca/corona/CoronaShowApiHandler$1;
.super Ljava/lang/Object;
.source "CoronaShowApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaShowApiHandler;->showAppStoreWindow(Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaShowApiHandler;

.field final synthetic val$appStringId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaShowApiHandler;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ansca/corona/CoronaShowApiHandler$1;->this$0:Lcom/ansca/corona/CoronaShowApiHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaShowApiHandler$1;->val$appStringId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/ansca/corona/CoronaShowApiHandler$1;->this$0:Lcom/ansca/corona/CoronaShowApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaShowApiHandler;->access$000(Lcom/ansca/corona/CoronaShowApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaShowApiHandler$1;->this$0:Lcom/ansca/corona/CoronaShowApiHandler;

    invoke-static {v1}, Lcom/ansca/corona/CoronaShowApiHandler;->access$100(Lcom/ansca/corona/CoronaShowApiHandler;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ansca/corona/purchasing/StoreActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result v1

    .line 149
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 150
    invoke-static {v0}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/WindowOrientation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarMode()Lcom/ansca/corona/CoronaStatusBarSettings;

    move-result-object v3

    sget-object v4, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 158
    :cond_1
    const-class v3, Lcom/ansca/corona/purchasing/StoreActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "full_screen"

    .line 159
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/ansca/corona/CoronaShowApiHandler$1;->val$appStringId:Ljava/lang/String;

    const-string v3, "nook_app_ean"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 161
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "com.bn.sdk.shop.details"

    .line 166
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/ansca/corona/CoronaShowApiHandler$1;->val$appStringId:Ljava/lang/String;

    const-string v3, "product_details_ean"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
