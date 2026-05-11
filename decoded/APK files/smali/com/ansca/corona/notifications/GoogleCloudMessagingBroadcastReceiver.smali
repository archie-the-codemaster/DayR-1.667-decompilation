.class public Lcom/ansca/corona/notifications/GoogleCloudMessagingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoogleCloudMessagingBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    invoke-direct {v0, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0, p2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->process(Landroid/content/Intent;)V

    return-void
.end method
