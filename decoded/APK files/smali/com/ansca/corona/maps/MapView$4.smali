.class Lcom/ansca/corona/maps/MapView$4;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/maps/MapView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V
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

    .line 266
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$4;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$4;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$4;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$4;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void

    .line 273
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$4;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$300(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/MessageBasedTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    return-void
.end method
