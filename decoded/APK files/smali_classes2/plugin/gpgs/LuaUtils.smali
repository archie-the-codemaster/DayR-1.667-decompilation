.class abstract Lplugin/gpgs/LuaUtils;
.super Ljava/lang/Object;
.source "LuaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/LuaUtils$Scheme;,
        Lplugin/gpgs/LuaUtils$Table;,
        Lplugin/gpgs/LuaUtils$LuaPushable;,
        Lplugin/gpgs/LuaUtils$LuaValue;,
        Lplugin/gpgs/LuaUtils$LuaLightuserdata;,
        Lplugin/gpgs/LuaUtils$Dirs;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "debug"

.field private static isDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static baseDirToString(J)Ljava/lang/String;
    .locals 3

    .line 137
    sget-wide v0, Lplugin/gpgs/LuaUtils$Dirs;->resourceDirectoryPointer:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 138
    sget-object p0, Lplugin/gpgs/LuaUtils$Dirs;->ResourceDirectory:Ljava/lang/String;

    return-object p0

    .line 139
    :cond_0
    sget-wide v0, Lplugin/gpgs/LuaUtils$Dirs;->documentsDirectoryPointer:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    .line 140
    sget-object p0, Lplugin/gpgs/LuaUtils$Dirs;->DocumentsDirectory:Ljava/lang/String;

    return-object p0

    .line 141
    :cond_1
    sget-wide v0, Lplugin/gpgs/LuaUtils$Dirs;->cachesDirectoryPointer:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    .line 142
    sget-object p0, Lplugin/gpgs/LuaUtils$Dirs;->CachesDirectory:Ljava/lang/String;

    return-object p0

    .line 143
    :cond_2
    sget-wide v0, Lplugin/gpgs/LuaUtils$Dirs;->temporaryDirectoryPointer:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_3

    .line 144
    sget-object p0, Lplugin/gpgs/LuaUtils$Dirs;->TemporaryDirectory:Ljava/lang/String;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static checkArgCount(Lcom/naef/jnlua/LuaState;I)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This function requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " arguments. Got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkArgCount(Lcom/naef/jnlua/LuaState;II)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p0

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This function requires from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " arguments. Got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-boolean v0, Lplugin/gpgs/LuaUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lplugin/gpgs/LuaUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static deleteRefIfNotNil(Lcom/naef/jnlua/LuaState;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    :cond_0
    return-void
.end method

.method static dispatchEvent(ILjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lplugin/gpgs/LuaUtils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method static dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lplugin/gpgs/LuaUtils$1;

    invoke-direct {v0, p1, p0, p2}, Lplugin/gpgs/LuaUtils$1;-><init>(Ljava/util/Hashtable;Ljava/lang/Integer;Z)V

    .line 100
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static enableDebug()V
    .locals 1

    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Lplugin/gpgs/LuaUtils;->isDebug:Z

    return-void
.end method

.method static getBitmap(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;)Landroid/graphics/Bitmap;
    .locals 2

    .line 191
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lplugin/gpgs/Utils;->pathForFile(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getDirPointers(Lcom/naef/jnlua/LuaState;)V
    .locals 4

    const-string v0, "system"

    .line 150
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lplugin/gpgs/LuaUtils$Dirs;->ResourceDirectory:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide v2

    sput-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->resourceDirectoryPointer:J

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 156
    sget-object v2, Lplugin/gpgs/LuaUtils$Dirs;->DocumentsDirectory:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide v2

    sput-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->documentsDirectoryPointer:J

    .line 158
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 160
    sget-object v2, Lplugin/gpgs/LuaUtils$Dirs;->CachesDirectory:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide v2

    sput-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->cachesDirectoryPointer:J

    .line 162
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 164
    sget-object v2, Lplugin/gpgs/LuaUtils$Dirs;->TemporaryDirectory:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->toPointer(I)J

    move-result-wide v1

    sput-wide v1, Lplugin/gpgs/LuaUtils$Dirs;->temporaryDirectoryPointer:J

    .line 166
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lplugin/gpgs/LuaUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static newEvent(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "name"

    .line 74
    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static pathForFile(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "system"

    .line 113
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "pathForFile"

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, -0x3

    .line 116
    iget-wide v1, p2, Lplugin/gpgs/LuaUtils$LuaLightuserdata;->pointer:J

    invoke-static {v1, v2}, Lplugin/gpgs/LuaUtils;->baseDirToString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static pushBaseDir(Lcom/naef/jnlua/LuaState;Ljava/lang/Long;)V
    .locals 6

    const-string v0, "system"

    .line 172
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->resourceDirectoryPointer:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 175
    sget-object p1, Lplugin/gpgs/LuaUtils$Dirs;->ResourceDirectory:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->documentsDirectoryPointer:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 177
    sget-object p1, Lplugin/gpgs/LuaUtils$Dirs;->DocumentsDirectory:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->cachesDirectoryPointer:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    .line 179
    sget-object p1, Lplugin/gpgs/LuaUtils$Dirs;->CachesDirectory:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->temporaryDirectoryPointer:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 181
    sget-object p1, Lplugin/gpgs/LuaUtils$Dirs;->TemporaryDirectory:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, -0x2

    .line 186
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    return-void
.end method

.method public static pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 652
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 653
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 654
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 655
    check-cast v1, Ljava/util/Map$Entry;

    .line 656
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lplugin/gpgs/LuaUtils;->pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    .line 657
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lplugin/gpgs/LuaUtils;->pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    .line 658
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 4

    .line 614
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 615
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 616
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 617
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto/16 :goto_1

    .line 618
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 619
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto/16 :goto_1

    .line 620
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 621
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto/16 :goto_1

    .line 622
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 623
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto/16 :goto_1

    .line 624
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 625
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString([B)V

    goto :goto_1

    .line 626
    :cond_5
    instance-of v0, p1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    if-eqz v0, :cond_6

    .line 627
    check-cast p1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    iget-wide v0, p1, Lplugin/gpgs/LuaUtils$LuaLightuserdata;->pointer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lplugin/gpgs/LuaUtils;->pushBaseDir(Lcom/naef/jnlua/LuaState;Ljava/lang/Long;)V

    goto :goto_1

    .line 628
    :cond_6
    instance-of v0, p1, Lplugin/gpgs/LuaUtils$LuaValue;

    if-eqz v0, :cond_7

    .line 629
    check-cast p1, Lplugin/gpgs/LuaUtils$LuaValue;

    .line 630
    iget v0, p1, Lplugin/gpgs/LuaUtils$LuaValue;->reference:I

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->ref(I)I

    .line 631
    invoke-virtual {p1, p0}, Lplugin/gpgs/LuaUtils$LuaValue;->delete(Lcom/naef/jnlua/LuaState;)V

    goto :goto_1

    .line 632
    :cond_7
    instance-of v0, p1, Lplugin/gpgs/LuaUtils$LuaPushable;

    if-eqz v0, :cond_8

    .line 633
    check-cast p1, Lplugin/gpgs/LuaUtils$LuaPushable;

    invoke-interface {p1, p0}, Lplugin/gpgs/LuaUtils$LuaPushable;->push(Lcom/naef/jnlua/LuaState;)V

    goto :goto_1

    .line 634
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 635
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x1

    .line 637
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 640
    :cond_9
    invoke-static {p0, v0}, Lplugin/gpgs/LuaUtils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    goto :goto_1

    .line 641
    :cond_a
    instance-of v0, p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_b

    .line 642
    check-cast p1, Ljava/util/Hashtable;

    invoke-static {p0, p1}, Lplugin/gpgs/LuaUtils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    goto :goto_1

    .line 644
    :cond_b
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_1
    return-void
.end method

.method static put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p2}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    const/4 p2, -0x2

    .line 108
    invoke-virtual {p0, p2, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static setTag(Ljava/lang/String;)V
    .locals 0

    .line 29
    sput-object p0, Lplugin/gpgs/LuaUtils;->TAG:Ljava/lang/String;

    return-void
.end method
