.class LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .line 362
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    return-void
.end method

.method private translateResponse(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x123

    if-eq p1, v0, :cond_1

    const/16 v0, 0x231

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "Not licensed"

    goto :goto_0

    :cond_1
    const-string p1, "Unable to establish connection to Google\'s Licensing servers.\n\nThis may be the result of a poor internet connection, or no internet connection at all.\n\nPlease ensure that your device is connected to the internet and try again."

    goto :goto_0

    :cond_2
    const-string p1, "Licensed"

    goto :goto_0

    :cond_3
    const-string p1, "Missing permission"

    goto :goto_0

    :cond_4
    const-string p1, "Invalid public key"

    goto :goto_0

    :cond_5
    const-string p1, "Not market managed"

    goto :goto_0

    :cond_6
    const-string p1, "Non matching UID"

    goto :goto_0

    :cond_7
    const-string p1, "Invalid package name"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public allow(I)V
    .locals 4

    .line 367
    invoke-static {}, LCoronaProvider/licensing/google/LuaLoader;->setLastCheckedAppVersion()V

    .line 370
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->translateResponse(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v1, p1, v2, v3}, LCoronaProvider/licensing/google/LuaLoader;->access$700(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public applicationError(I)V
    .locals 4

    .line 382
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->translateResponse(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "configuration"

    invoke-static {v0, v1, p1, v2, v3}, LCoronaProvider/licensing/google/LuaLoader;->access$700(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public dontAllow(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x123

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "network"

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 378
    :goto_1
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;->translateResponse(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1, v1, v2}, LCoronaProvider/licensing/google/LuaLoader;->access$700(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
