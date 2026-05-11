.class Lcom/ansca/corona/Controller$8$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$8;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$settings:Lcom/ansca/corona/permissions/PermissionsSettings;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$8;Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/permissions/PermissionsSettings;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/ansca/corona/Controller$8$1;->this$1:Lcom/ansca/corona/Controller$8;

    iput-object p2, p0, Lcom/ansca/corona/Controller$8$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Lcom/ansca/corona/Controller$8$1;->val$settings:Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1255
    iget-object p1, p0, Lcom/ansca/corona/Controller$8$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    iget-object p2, p0, Lcom/ansca/corona/Controller$8$1;->val$settings:Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->showRequestPermissionsWindowUsing(Lcom/ansca/corona/permissions/PermissionsSettings;)V

    return-void
.end method
