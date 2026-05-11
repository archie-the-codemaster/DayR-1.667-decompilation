.class Lcom/ansca/corona/CoronaWebView$3;
.super Ljava/lang/Object;
.source "CoronaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaWebView;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaWebView;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaWebView;I)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$3;->this$0:Lcom/ansca/corona/CoronaWebView;

    iput p2, p0, Lcom/ansca/corona/CoronaWebView$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$3;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/CoronaWebView$3;->val$id:I

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->webViewClosed(Lcom/ansca/corona/CoronaRuntime;I)V

    return-void
.end method
