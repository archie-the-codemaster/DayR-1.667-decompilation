.class Lplugin/facebook/v4a/FacebookFragmentActivity$6;
.super Ljava/lang/Object;
.source "FacebookFragmentActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookFragmentActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

.field final synthetic val$placePickerFragment:Lpicker/PlacePickerFragment;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookFragmentActivity;Lpicker/PlacePickerFragment;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$6;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    iput-object p2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$6;->val$placePickerFragment:Lpicker/PlacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$6;->val$placePickerFragment:Lpicker/PlacePickerFragment;

    invoke-virtual {v0}, Lpicker/PlacePickerFragment;->getLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$6;->val$placePickerFragment:Lpicker/PlacePickerFragment;

    invoke-virtual {v0, p1}, Lpicker/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 344
    iget-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$6;->val$placePickerFragment:Lpicker/PlacePickerFragment;

    invoke-virtual {p1, v1}, Lpicker/PlacePickerFragment;->loadData(Z)V

    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
