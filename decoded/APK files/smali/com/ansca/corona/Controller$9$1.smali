.class Lcom/ansca/corona/Controller$9$1;
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

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$9;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/ansca/corona/Controller$9$1;->this$1:Lcom/ansca/corona/Controller$9;

    iput-object p2, p0, Lcom/ansca/corona/Controller$9$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1332
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1333
    iget-object p2, p0, Lcom/ansca/corona/Controller$9$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p2}, Lcom/ansca/corona/CoronaActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1334
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1335
    iget-object p2, p0, Lcom/ansca/corona/Controller$9$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p2, p1}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
