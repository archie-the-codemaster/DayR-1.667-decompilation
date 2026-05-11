.class Lplugin/gpgs/LuaUtils$Dirs;
.super Ljava/lang/Object;
.source "LuaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dirs"
.end annotation


# static fields
.field static CachesDirectory:Ljava/lang/String; = "CachesDirectory"

.field static DocumentsDirectory:Ljava/lang/String; = "DocumentsDirectory"

.field static ResourceDirectory:Ljava/lang/String; = "ResourceDirectory"

.field static TemporaryDirectory:Ljava/lang/String; = "TemporaryDirectory"

.field static cachesDirectoryPointer:J

.field static documentsDirectoryPointer:J

.field static resourceDirectoryPointer:J

.field static temporaryDirectoryPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
