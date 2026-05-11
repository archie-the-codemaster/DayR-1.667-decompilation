.class Lplugin/gpgs/LuaUtils$LuaLightuserdata;
.super Ljava/lang/Object;
.source "LuaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LuaLightuserdata"
.end annotation


# instance fields
.field pointer:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-wide p1, p0, Lplugin/gpgs/LuaUtils$LuaLightuserdata;->pointer:J

    return-void
.end method
