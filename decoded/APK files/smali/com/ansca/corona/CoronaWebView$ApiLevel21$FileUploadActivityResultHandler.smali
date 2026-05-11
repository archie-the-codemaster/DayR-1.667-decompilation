.class Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;
.super Ljava/lang/Object;
.source "CoronaWebView.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaWebView$ApiLevel21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUploadActivityResultHandler"
.end annotation


# instance fields
.field private fFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;->fFilePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 552
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const/4 p1, 0x0

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    :try_start_0
    new-array p2, p2, [Landroid/net/Uri;

    const/4 p3, 0x0

    .line 558
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    aput-object p4, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p2, p1

    .line 563
    :goto_0
    iget-object p3, p0, Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;->fFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_1

    .line 564
    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 565
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;->fFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method
