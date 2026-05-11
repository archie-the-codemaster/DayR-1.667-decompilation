.class Lplugin/gpgs/LuaUtils$Scheme;
.super Ljava/lang/Object;
.source "LuaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Scheme"
.end annotation


# static fields
.field static final LuaTypeByteArray:Ljava/lang/Integer;

.field static final LuaTypeNumeric:Ljava/lang/Integer;


# instance fields
.field scheme:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 559
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeNumeric:Ljava/lang/Integer;

    const/16 v0, 0x3e9

    .line 560
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeByteArray:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 573
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method byteArray(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 603
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeByteArray:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 608
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 588
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lcom/naef/jnlua/LuaType;->LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 4

    .line 583
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "listener"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 568
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method numeric(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 598
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lplugin/gpgs/LuaUtils$Scheme;->LuaTypeNumeric:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 563
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 578
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method userdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;
    .locals 2

    .line 593
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$Scheme;->scheme:Ljava/util/Hashtable;

    sget-object v1, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
