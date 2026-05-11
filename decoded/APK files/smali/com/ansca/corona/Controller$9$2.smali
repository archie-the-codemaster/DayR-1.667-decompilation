.class Lcom/ansca/corona/Controller$9$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$9;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$9;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/ansca/corona/Controller$9$2;->this$1:Lcom/ansca/corona/Controller$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1345
    iget-object p1, p0, Lcom/ansca/corona/Controller$9$2;->this$1:Lcom/ansca/corona/Controller$9;

    iget-object p1, p1, Lcom/ansca/corona/Controller$9;->val$requestPermissionsResultData:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    .line 1347
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getRequestPermissionsResultHandler()Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

    if-eqz p1, :cond_0

    .line 1349
    iget-object p2, p0, Lcom/ansca/corona/Controller$9$2;->this$1:Lcom/ansca/corona/Controller$9;

    iget-object p2, p2, Lcom/ansca/corona/Controller$9;->val$requestPermissionsResultData:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;->forwardRequestPermissionsResultToLua(Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V

    :cond_0
    return-void
.end method
