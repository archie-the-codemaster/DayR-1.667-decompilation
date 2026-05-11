.class Lcom/ansca/corona/ViewManager$28;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->requestWebViewLoadUrl(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$28;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$28;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$28;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1137
    iget-object v0, p0, Lcom/ansca/corona/ViewManager$28;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v1, Lcom/ansca/corona/CoronaWebView;

    iget v2, p0, Lcom/ansca/corona/ViewManager$28;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaWebView;

    if-eqz v0, :cond_1

    .line 1139
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$28;->val$finalUrl:Ljava/lang/String;

    .line 1140
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1144
    new-instance v3, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v3, v2}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-virtual {v3, v1}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    invoke-static {v2, v1}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1149
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaWebView;->loadUrl(Ljava/lang/String;)V

    const/16 v1, 0x82

    .line 1154
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaWebView;->requestFocus(I)Z

    :cond_1
    return-void
.end method
