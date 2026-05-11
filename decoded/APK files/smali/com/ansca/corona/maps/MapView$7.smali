.class Lcom/ansca/corona/maps/MapView$7;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/maps/MapView;->addMarker(Lcom/ansca/corona/maps/MapMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;

.field final synthetic val$mapMarker:Lcom/ansca/corona/maps/MapMarker;


# direct methods
.method constructor <init>(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapMarker;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$7;->this$0:Lcom/ansca/corona/maps/MapView;

    iput-object p2, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript:addMarker("

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v1}, Lcom/ansca/corona/maps/MapMarker;->getMarkerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapMarker;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapMarker;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapMarker;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    const-string v4, "\""

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$7;->this$0:Lcom/ansca/corona/maps/MapView;

    iget-object v5, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v5}, Lcom/ansca/corona/maps/MapMarker;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ansca/corona/maps/MapView;->access$400(Lcom/ansca/corona/maps/MapView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v1}, Lcom/ansca/corona/maps/MapMarker;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$7;->this$0:Lcom/ansca/corona/maps/MapView;

    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapMarker;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ansca/corona/maps/MapView;->access$400(Lcom/ansca/corona/maps/MapView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 612
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v1}, Lcom/ansca/corona/maps/MapMarker;->getImageFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 617
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$7;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v1}, Lcom/ansca/corona/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$7;->val$mapMarker:Lcom/ansca/corona/maps/MapMarker;

    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapMarker;->getImageFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 622
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ")"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$7;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v1}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
