.class Lcom/ansca/corona/maps/MapView$JavaScriptInterface;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field private final fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/maps/MapView;)V
    .locals 4

    .line 755
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ic_maps_indicator_current_position"

    aput-object v1, p1, v0

    const-string v0, "ic_maps_indicator_current_position_anim1"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v1, "ic_maps_indicator_current_position_anim2"

    const/4 v2, 0x2

    aput-object v1, p1, v2

    const/4 v2, 0x3

    const-string v3, "ic_maps_indicator_current_position_anim3"

    aput-object v3, p1, v2

    const/4 v2, 0x4

    aput-object v1, p1, v2

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 757
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapView$1;)V
    .locals 0

    .line 755
    invoke-direct {p0, p1}, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;-><init>(Lcom/ansca/corona/maps/MapView;)V

    return-void
.end method


# virtual methods
.method public getCurrentLocationMarkerUrlByIndex(I)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 794
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto/16 :goto_3

    .line 800
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    .line 801
    invoke-virtual {v2}, Lcom/ansca/corona/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getInternalResourceCachesDirectory"

    invoke-static {v2, v3, v4}, Lcom/ansca/corona/maps/MapView;->access$600(Lcom/ansca/corona/maps/MapView;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 808
    :try_start_0
    new-instance v2, Lcom/ansca/corona/storage/ResourceServices;

    .line 809
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 810
    iget-object v3, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v2, p1}, Lcom/ansca/corona/storage/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result p1

    .line 813
    invoke-virtual {v2}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 812
    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 814
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 816
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 824
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 819
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 824
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 827
    :catch_4
    :cond_2
    throw p1

    .line 834
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_3
    return-object v0
.end method

.method public getCurrentLocationMarkerUrlCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->fCurrentLocationMarkerResourceNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGoogleMapAPIKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$500(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->GetGoogleMapsAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapTypeName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->getMapType()Lcom/ansca/corona/maps/MapType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 845
    sget-object v0, Lcom/ansca/corona/maps/MapType;->STANDARD:Lcom/ansca/corona/maps/MapType;

    .line 847
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapType;->toInvariantString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public onCurrentLocationLost()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/maps/MapView;->access$702(Lcom/ansca/corona/maps/MapView;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onCurrentLocationReceived(DDDDDDDJ)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 885
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-wide v1, p1

    .line 886
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    move-wide v1, p3

    .line 887
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    move-wide v1, p5

    double-to-float v1, v1

    .line 888
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    move-wide v1, p7

    .line 889
    invoke-virtual {v0, p7, p8}, Landroid/location/Location;->setAltitude(D)V

    move-wide v1, p11

    double-to-float v1, v1

    .line 890
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    move-wide/from16 v1, p13

    double-to-float v1, v1

    .line 891
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    move-wide/from16 v1, p15

    .line 892
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    move-object v1, p0

    .line 893
    iget-object v2, v1, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v2, v0}, Lcom/ansca/corona/maps/MapView;->access$702(Lcom/ansca/corona/maps/MapView;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onMapBoundsChanged(DDDD)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object v0, p0

    .line 960
    iget-object v11, v0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    new-instance v12, Lcom/ansca/corona/maps/MapView$LocationBounds;

    move-object v1, v12

    move-object v2, v11

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/ansca/corona/maps/MapView$LocationBounds;-><init>(Lcom/ansca/corona/maps/MapView;DDDD)V

    invoke-static {v11, v12}, Lcom/ansca/corona/maps/MapView;->access$1102(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapView$LocationBounds;)Lcom/ansca/corona/maps/MapView$LocationBounds;

    return-void
.end method

.method public onMapLoadFinished()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/maps/MapView$JavaScriptInterface$1;-><init>(Lcom/ansca/corona/maps/MapView$JavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMapTapped(DD)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v7, Lcom/ansca/corona/maps/MapTappedTask;

    iget-object v1, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-virtual {v1}, Lcom/ansca/corona/maps/MapView;->getId()I

    move-result v2

    move-object v1, v7

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/maps/MapTappedTask;-><init>(IDD)V

    invoke-virtual {v0, v7}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method

.method public onMarkerTouch(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1300(Lcom/ansca/corona/maps/MapView;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/maps/MapMarker;

    if-eqz p1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {v0}, Lcom/ansca/corona/maps/MapView;->access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/maps/MapMarkerTask;

    invoke-direct {v1, p1}, Lcom/ansca/corona/maps/MapMarkerTask;-><init>(Lcom/ansca/corona/maps/MapMarker;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method
