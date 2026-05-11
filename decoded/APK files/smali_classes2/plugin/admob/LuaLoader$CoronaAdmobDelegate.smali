.class Lplugin/admob/LuaLoader$CoronaAdmobDelegate;
.super Lcom/google/android/gms/ads/AdListener;
.source "LuaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaAdmobDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 1644
    iput-object p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method getAdRequestErrorMsg(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown error"

    return-object p1

    :cond_0
    const-string p1, "No Ads Available"

    return-object p1

    :cond_1
    const-string p1, "Network Error"

    return-object p1

    :cond_2
    const-string p1, "Invalid Request"

    return-object p1

    :cond_3
    const-string p1, "Internal Error"

    return-object p1
.end method
