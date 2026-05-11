.class Lcom/ansca/corona/Controller$11$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$11;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$11;)V
    .locals 0

    .line 1436
    iput-object p1, p0, Lcom/ansca/corona/Controller$11$1;->this$1:Lcom/ansca/corona/Controller$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1439
    iget-object p1, p0, Lcom/ansca/corona/Controller$11$1;->this$1:Lcom/ansca/corona/Controller$11;

    iget-object p1, p1, Lcom/ansca/corona/Controller$11;->this$0:Lcom/ansca/corona/Controller;

    const-string p2, "http://developer.android.com/guide/topics/security/permissions.html#permission-groups"

    invoke-virtual {p1, p2}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    return-void
.end method
