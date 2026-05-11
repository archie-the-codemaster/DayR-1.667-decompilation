.class final Lplugin/facebook/v4a/FacebookController$10;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController;->facebookDialog(Ljava/lang/String;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$finalListener:I

.field final synthetic val$params:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Hashtable;Lcom/ansca/corona/CoronaActivity;I)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    iput-object p2, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    iput-object p3, p0, Lplugin/facebook/v4a/FacebookController$10;->val$activity:Lcom/ansca/corona/CoronaActivity;

    iput p4, p0, Lplugin/facebook/v4a/FacebookController$10;->val$finalListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1346
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$2000(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Corona"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 1349
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    const-string v3, "link"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1351
    :goto_0
    iget-object v4, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    const-string v5, "peopleIds"

    .line 1352
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 1354
    new-instance v5, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 1356
    :goto_2
    iget-object v4, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v4, :cond_3

    const-string v6, "placeId"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v4, v2

    .line 1357
    :goto_3
    iget-object v6, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v6, :cond_4

    const-string v7, "ref"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 1359
    :goto_4
    iget-object v7, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v8, "feed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_b

    .line 1417
    :cond_5
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1425
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->facebookIsFacebookAppEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ERROR: Facebook app isn\'t installed for sharing photos."

    .line 1427
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1431
    :cond_6
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    const-string v1, "photos"

    .line 1432
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    goto :goto_5

    :cond_7
    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_8

    .line 1434
    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_8
    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_2b

    .line 1440
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1442
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    if-eqz v3, :cond_9

    const-string v4, "caption"

    .line 1450
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object v4, v2

    :goto_8
    if-eqz v3, :cond_a

    const-string v5, "url"

    .line 1454
    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object v3, v2

    :goto_9
    if-eqz v3, :cond_b

    .line 1457
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_a

    :cond_b
    move-object v3, v2

    .line 1461
    :goto_a
    new-instance v5, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 1462
    invoke-virtual {v5, v4}, Lcom/facebook/share/model/SharePhoto$Builder;->setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v4

    .line 1463
    invoke-virtual {v4, v3}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v3

    .line 1464
    invoke-virtual {v3}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v3

    .line 1465
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1469
    :cond_c
    new-instance v1, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 1470
    invoke-virtual {v1, v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    .line 1471
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    .line 1475
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$900()Lcom/facebook/share/widget/ShareDialog;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    goto/16 :goto_1b

    :cond_d
    :goto_b
    if-eqz v0, :cond_e

    .line 1368
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c

    :cond_e
    const-string v0, "ERROR: FacebookController.facebookDialog(): Invalid parameters passed to facebook.showDialog( action [, params] ). options.link is required"

    .line 1370
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 1375
    :goto_c
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v1, :cond_f

    const-string v3, "picture"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    :cond_f
    move-object v1, v2

    :goto_d
    if-eqz v1, :cond_10

    .line 1378
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1382
    :cond_10
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v3, :cond_11

    const-string v7, "description"

    .line 1383
    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_e

    :cond_11
    move-object v3, v2

    .line 1384
    :goto_e
    iget-object v7, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v7, :cond_12

    const-string v2, "name"

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1387
    :cond_12
    iget-object v7, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1388
    new-instance v7, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    invoke-direct {v7}, Lcom/facebook/share/internal/ShareFeedContent$Builder;-><init>()V

    .line 1389
    invoke-virtual {v7, v3}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkDescription(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v3

    .line 1390
    invoke-virtual {v3, v2}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkName(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v2

    .line 1391
    invoke-virtual {v2, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setPicture(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v1

    .line 1392
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .line 1393
    invoke-virtual {v0, v5}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .line 1394
    invoke-virtual {v0, v4}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .line 1395
    invoke-virtual {v0, v6}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .line 1396
    invoke-virtual {v0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->build()Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object v0

    .line 1398
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$900()Lcom/facebook/share/widget/ShareDialog;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    goto/16 :goto_1b

    .line 1400
    :cond_13
    new-instance v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 1404
    invoke-virtual {v1, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    .line 1405
    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 1406
    invoke-virtual {v0, v5}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 1407
    invoke-virtual {v0, v4}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 1408
    invoke-virtual {v0, v6}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 1409
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 1415
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$900()Lcom/facebook/share/widget/ShareDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 1479
    :cond_14
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v3, "requests"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v3, "apprequests"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_f

    .line 1566
    :cond_15
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v1, "place"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v2, "friends"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1568
    :cond_16
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lplugin/facebook/v4a/FacebookController$10;->val$activity:Lcom/ansca/corona/CoronaActivity;

    const-class v3, Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->access$2102(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1569
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2100()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    const-string v3, "fragment_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2100()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lplugin/facebook/v4a/FacebookController$10;->val$finalListener:I

    const-string v3, "fragment_listener"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1572
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2100()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    .line 1573
    invoke-static {v2}, Lplugin/facebook/v4a/FacebookController;->access$2200(Ljava/util/Hashtable;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fragment_extras"

    .line 1572
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1575
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1576
    sget-object v0, Lplugin/facebook/v4a/FacebookController$11;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2300()Lcom/ansca/corona/permissions/PermissionsServices;

    move-result-object v1

    const-string v2, "android.permission-group.LOCATION"

    invoke-virtual {v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateForSupportedGroup(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 1588
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2100()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1b

    .line 1579
    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2b

    .line 1580
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2400()V

    goto/16 :goto_1b

    .line 1592
    :cond_18
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$2100()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1b

    .line 1483
    :cond_19
    :goto_f
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v0, :cond_1a

    const-string v3, "message"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_1a
    move-object v0, v2

    .line 1484
    :goto_10
    iget-object v3, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v3, :cond_1b

    const-string v4, "to"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_11

    :cond_1b
    move-object v3, v2

    .line 1485
    :goto_11
    iget-object v4, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v4, :cond_1c

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_12

    :cond_1c
    move-object v4, v2

    .line 1486
    :goto_12
    iget-object v5, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v5, :cond_1d

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_13

    :cond_1d
    move-object v5, v2

    .line 1487
    :goto_13
    iget-object v6, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v6, :cond_1e

    const-string v7, "objectId"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_14

    :cond_1e
    move-object v6, v2

    .line 1492
    :goto_14
    iget-object v7, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v7, :cond_1f

    const-string v8, "actionType"

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_15

    :cond_1f
    move-object v7, v2

    .line 1493
    :goto_15
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_20

    .line 1494
    const-class v8, Lcom/facebook/share/model/GameRequestContent$ActionType;

    check-cast v7, Ljava/lang/String;

    .line 1495
    invoke-static {v8, v7}, Lplugin/facebook/v4a/FacebookController;->enumValueOfIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/facebook/share/model/GameRequestContent$ActionType;

    goto :goto_16

    :cond_20
    if-eqz v7, :cond_21

    const-string v0, "ERROR: FacebookController.facebookDialog(): Invalid parameters passed to facebook.showDialog( action [, params] ). options.actionType must be a string"

    .line 1497
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    move-object v7, v2

    .line 1508
    :goto_16
    iget-object v8, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v8, :cond_22

    const-string v9, "filter"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_17

    :cond_22
    move-object v8, v2

    .line 1509
    :goto_17
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_23

    .line 1510
    const-class v9, Lcom/facebook/share/model/GameRequestContent$Filters;

    check-cast v8, Ljava/lang/String;

    .line 1511
    invoke-static {v9, v8}, Lplugin/facebook/v4a/FacebookController;->enumValueOfIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    check-cast v8, Lcom/facebook/share/model/GameRequestContent$Filters;

    goto :goto_18

    :cond_23
    if-eqz v8, :cond_24

    const-string v0, "ERROR: FacebookController.facebookDialog(): Invalid parameters passed to facebook.showDialog( action [, params] ). options.filter must be a string"

    .line 1513
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    move-object v8, v2

    .line 1521
    :goto_18
    iget-object v9, p0, Lplugin/facebook/v4a/FacebookController$10;->val$params:Ljava/util/Hashtable;

    if-eqz v9, :cond_25

    const-string v10, "suggestions"

    .line 1522
    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Hashtable;

    goto :goto_19

    :cond_25
    move-object v9, v2

    :goto_19
    if-eqz v9, :cond_29

    .line 1524
    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v9

    .line 1528
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_26
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1529
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_27

    check-cast v11, Ljava/lang/String;

    const-string v12, "[0-9]+"

    .line 1530
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_26

    :cond_27
    const-string v0, "ERROR: FacebookController.facebookDialog(): Invalid parameters passed to facebook.showDialog( action [, params] ). options.suggestions must contain Facebook User IDs as strings"

    .line 1531
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1540
    :cond_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1a

    :cond_29
    move-object v1, v2

    :goto_1a
    if-eqz v3, :cond_2a

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    :cond_2a
    new-instance v3, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v3}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 1554
    invoke-virtual {v3, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1555
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1556
    invoke-virtual {v0, v4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1557
    invoke-virtual {v0, v5}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1558
    invoke-virtual {v0, v7}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1559
    invoke-virtual {v0, v6}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1560
    invoke-virtual {v0, v8}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1561
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 1562
    invoke-virtual {v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    .line 1564
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$1100()Lcom/facebook/share/widget/GameRequestDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    :cond_2b
    :goto_1b
    return-void
.end method
