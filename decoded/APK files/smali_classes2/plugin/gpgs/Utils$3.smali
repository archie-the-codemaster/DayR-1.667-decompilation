.class final Lplugin/gpgs/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;Landroid/content/Intent;I)V
    .locals 0

    .line 770
    iput-object p1, p0, Lplugin/gpgs/Utils$3;->val$activity:Lcom/ansca/corona/CoronaActivity;

    iput-object p2, p0, Lplugin/gpgs/Utils$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lplugin/gpgs/Utils$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 773
    iget-object v0, p0, Lplugin/gpgs/Utils$3;->val$activity:Lcom/ansca/corona/CoronaActivity;

    iget-object v1, p0, Lplugin/gpgs/Utils$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lplugin/gpgs/Utils$3;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
