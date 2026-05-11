.class Lcom/ansca/corona/maps/MapView$1;
.super Landroid/webkit/WebView;
.source "MapView.java"


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
.method constructor <init>(Lcom/ansca/corona/maps/MapView;Landroid/content/Context;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$1;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate(IIII)V
    .locals 1

    sub-int v0, p3, p1

    if-lez v0, :cond_1

    sub-int v0, p4, p2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->invalidate(IIII)V

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView$1;->invalidate()V

    :goto_1
    return-void
.end method
