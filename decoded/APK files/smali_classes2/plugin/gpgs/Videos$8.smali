.class Lplugin/gpgs/Videos$8;
.super Ljava/lang/Object;
.source "Videos.java"

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Videos;->setListener(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Videos;

.field final synthetic val$fLuaListener:I


# direct methods
.method constructor <init>(Lplugin/gpgs/Videos;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lplugin/gpgs/Videos$8;->this$0:Lplugin/gpgs/Videos;

    iput p2, p0, Lplugin/gpgs/Videos$8;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureOverlayStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    goto :goto_0

    :cond_0
    const-string p1, "dismissed"

    goto :goto_0

    :cond_1
    const-string p1, "stopped"

    goto :goto_0

    :cond_2
    const-string p1, "started"

    goto :goto_0

    :cond_3
    const-string p1, "shown"

    :goto_0
    const-string v0, "video"

    .line 194
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    .line 195
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 196
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isError"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget p1, p0, Lplugin/gpgs/Videos$8;->val$fLuaListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method
