.class public interface abstract Lcom/ansca/corona/listeners/CoronaShowApiListener;
.super Ljava/lang/Object;
.source "CoronaShowApiListener.java"


# virtual methods
.method public abstract showAppStoreWindow(Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract showCameraWindowForImage(Ljava/lang/String;)V
.end method

.method public abstract showCameraWindowForVideo(II)V
.end method

.method public abstract showRequestPermissionsWindowUsing(Lcom/ansca/corona/permissions/PermissionsSettings;)V
.end method

.method public abstract showSelectImageWindowUsing(Ljava/lang/String;)V
.end method

.method public abstract showSelectVideoWindow()V
.end method

.method public abstract showSendMailWindowUsing(Lcom/ansca/corona/MailSettings;)V
.end method

.method public abstract showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V
.end method
