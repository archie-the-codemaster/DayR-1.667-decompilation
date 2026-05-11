.class Lplugin/gpgs/Snapshots$10;
.super Ljava/lang/Object;
.source "Snapshots.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Snapshots;->show(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Snapshots;

.field final synthetic val$luaListener:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lplugin/gpgs/Snapshots;Ljava/lang/Integer;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lplugin/gpgs/Snapshots$10;->this$0:Lplugin/gpgs/Snapshots;

    iput-object p2, p0, Lplugin/gpgs/Snapshots$10;->val$luaListener:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 3

    .line 360
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 361
    iget-object p1, p0, Lplugin/gpgs/Snapshots$10;->val$luaListener:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    const-string p1, "show"

    .line 362
    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-eq p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 365
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 367
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "errorMessage"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_3

    const-string p2, "com.google.android.gms.games.SNAPSHOT_METADATA"

    .line 371
    invoke-virtual {p4, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 372
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 373
    invoke-static {p2}, Lplugin/gpgs/Utils;->snapshotMetadataToHashtable(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/util/Hashtable;

    move-result-object p2

    const-string p3, "snapshot"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.games.SNAPSHOT_NEW"

    .line 374
    invoke-virtual {p4, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isNew"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_3
    :goto_1
    iget-object p2, p0, Lplugin/gpgs/Snapshots$10;->val$luaListener:Ljava/lang/Integer;

    invoke-static {p2, p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    :cond_4
    return-void
.end method
