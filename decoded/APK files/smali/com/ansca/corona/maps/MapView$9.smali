.class Lcom/ansca/corona/maps/MapView$9;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/maps/MapView;->removeAllMarkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/maps/MapView;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$9;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$9;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:removeAllMarkers()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
