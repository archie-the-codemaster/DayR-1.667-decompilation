.class public Lnetwork/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;,
        Lnetwork/NetworkRequest$NetworkRequestParameters;,
        Lnetwork/NetworkRequest$LuaCallback;,
        Lnetwork/NetworkRequest$NetworkRequestState;,
        Lnetwork/NetworkRequest$CoronaFileSpec;,
        Lnetwork/NetworkRequest$ProgressDirection;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "networkRequest"


# instance fields
.field private fLoader:Lnetwork/LuaLoader;

.field private fOpenRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnetwork/LuaLoader;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    iput-object p1, p0, Lnetwork/NetworkRequest;->fLoader:Lnetwork/LuaLoader;

    .line 48
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lnetwork/NetworkRequest;->concatHeaderValues(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lnetwork/NetworkRequest;)Lnetwork/LuaLoader;
    .locals 0

    .line 35
    iget-object p0, p0, Lnetwork/NetworkRequest;->fLoader:Lnetwork/LuaLoader;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lnetwork/NetworkRequest;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeText(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lnetwork/NetworkRequest;->getEncodingFromContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concatHeaderValues(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 68
    array-length v0, p1

    const-string v1, "ERROR: network: "

    const-string v2, "Corona"

    if-lez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ";"

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 120
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p0, v0

    .line 122
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "charset="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v5, "Explicit charset was found in content type, was: %s"

    .line 127
    invoke-static {v5, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    return-object v0
.end method

.method private static getEncodingFromContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Looking for embedded encoding in content: <BODY>%s</BODY>"

    .line 183
    invoke-static {v3, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeXML(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    const-string v1, "<?xml\\b[^>]*\\bencoding=[\'\"]([a-zA-Z0-9_\\-]+)[\'\"].*[^>]*?>"

    .line 191
    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 192
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v5, "Found charset in XML meta header encoding attribute: %s"

    .line 196
    invoke-static {v5, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 200
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeHTML(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "<meta\\b[^>]*\\bcharset=[\'\"]([a-zA-Z0-9_\\-]+)[\'\"][^>]*>"

    .line 206
    invoke-static {p0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 207
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-array p0, v0, [Ljava/lang/Object;

    aput-object v1, p0, v2

    const-string v4, "Found charset in HTML meta charset header: %s"

    .line 211
    invoke-static {v4, p0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-nez v1, :cond_2

    const-string p0, "<meta\\b[^>]*\\bhttp-equiv=[\'\"](?:Content-Type)[\'\"][^>]*>"

    .line 223
    invoke-static {p0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 224
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string v4, "Found httpMetaCtHeader: %s"

    .line 228
    invoke-static {v4, p1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "\\bcharset=([a-zA-Z0-9_\\-]+)\\b"

    .line 230
    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 231
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-array p0, v0, [Ljava/lang/Object;

    aput-object v1, p0, v2

    const-string p1, "Found charset in meta Content-Type header: %s"

    .line 235
    invoke-static {p1, p0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method private static isContentTypeHTML(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text/html"

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/xhtml"

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isContentTypeText(Ljava/lang/String;)Z
    .locals 1

    .line 160
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeXML(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-static {p0}, Lnetwork/NetworkRequest;->isContentTypeHTML(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/json"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/javascript"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-javascript"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ecmascript"

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-www-form-urlencoded"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isContentTypeXML(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "^application/(?:\\w+)[+]xml"

    .line 136
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "text/xml"

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/xml"

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/xhtml"

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lnetwork/NetworkRequest;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abortOpenConnections(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Aborting connection"

    .line 55
    invoke-static {v3, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1, p1}, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->abort(Lcom/ansca/corona/CoronaRuntime;)Z

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "request_native"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 2044
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.permission.INTERNET"

    .line 2046
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2049
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "network.request() - thread: %d"

    invoke-static {v3, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 2050
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "network.request() - luaState %s"

    invoke-static {v3, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2076
    new-instance v2, Lnetwork/NetworkRequest$NetworkRequestParameters;

    invoke-direct {v2, p0, v1}, Lnetwork/NetworkRequest$NetworkRequestParameters;-><init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$1;)V

    .line 2077
    invoke-virtual {v2, p1}, Lnetwork/NetworkRequest$NetworkRequestParameters;->extractRequestParameters(Lcom/naef/jnlua/LuaState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2080
    new-instance v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;

    iget-object v3, p0, Lnetwork/NetworkRequest;->fOpenRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p0, v2, v3}, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;-><init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestParameters;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 2081
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2083
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2084
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2088
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    return v0

    :cond_1
    return v4
.end method
