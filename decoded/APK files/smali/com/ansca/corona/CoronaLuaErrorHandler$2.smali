.class Lcom/ansca/corona/CoronaLuaErrorHandler$2;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaLuaErrorHandler;->reportError(Ljava/lang/String;Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$exception:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaLuaErrorHandler;Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$exception:Ljava/lang/RuntimeException;

    iput-object p3, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;-><init>(Lcom/ansca/corona/CoronaLuaErrorHandler$2;)V

    .line 232
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Runtime Error"

    .line 233
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 234
    iget-object v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$exception:Ljava/lang/RuntimeException;

    throw v0
.end method
