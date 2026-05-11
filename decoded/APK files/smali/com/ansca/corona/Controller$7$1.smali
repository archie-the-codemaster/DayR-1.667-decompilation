.class Lcom/ansca/corona/Controller$7$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$7;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$7;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/ansca/corona/Controller$7$1;->this$1:Lcom/ansca/corona/Controller$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1219
    iget-object p1, p0, Lcom/ansca/corona/Controller$7$1;->this$1:Lcom/ansca/corona/Controller$7;

    iget-object p1, p1, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    const-string p2, "https://docs.coronalabs.com/guide/monetization/IAP/index.html#google-play-setup"

    invoke-virtual {p1, p2}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    return-void
.end method
