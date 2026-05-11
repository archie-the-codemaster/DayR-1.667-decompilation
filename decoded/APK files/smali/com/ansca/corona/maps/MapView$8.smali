.class Lcom/ansca/corona/maps/MapView$8;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/maps/MapView;->removeMarker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;

.field final synthetic val$markerId:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/maps/MapView;I)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$8;->this$0:Lcom/ansca/corona/maps/MapView;

    iput p2, p0, Lcom/ansca/corona/maps/MapView$8;->val$markerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$8;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript:removeMarker("

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    iget v1, p0, Lcom/ansca/corona/maps/MapView$8;->val$markerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$8;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v1}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
