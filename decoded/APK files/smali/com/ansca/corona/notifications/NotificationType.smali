.class public Lcom/ansca/corona/notifications/NotificationType;
.super Ljava/lang/Object;
.source "NotificationType.java"


# static fields
.field public static final LOCAL:Lcom/ansca/corona/notifications/NotificationType;

.field public static final REMOTE:Lcom/ansca/corona/notifications/NotificationType;

.field public static final REMOTE_REGISTRATION:Lcom/ansca/corona/notifications/NotificationType;


# instance fields
.field private fInvariantName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/ansca/corona/notifications/NotificationType;

    const-string v1, "local"

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationType;->LOCAL:Lcom/ansca/corona/notifications/NotificationType;

    .line 40
    new-instance v0, Lcom/ansca/corona/notifications/NotificationType;

    const-string v1, "remote"

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationType;->REMOTE:Lcom/ansca/corona/notifications/NotificationType;

    .line 43
    new-instance v0, Lcom/ansca/corona/notifications/NotificationType;

    const-string v1, "remoteRegistration"

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationType;->REMOTE_REGISTRATION:Lcom/ansca/corona/notifications/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ansca/corona/notifications/NotificationType;->fInvariantName:Ljava/lang/String;

    return-void
.end method

.method public static fromInvariantString(Ljava/lang/String;)Lcom/ansca/corona/notifications/NotificationType;
    .locals 7

    .line 64
    const-class v0, Lcom/ansca/corona/notifications/NotificationType;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 65
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ansca/corona/notifications/NotificationType;

    .line 67
    iget-object v6, v5, Lcom/ansca/corona/notifications/NotificationType;->fInvariantName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public toInvariantString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationType;->fInvariantName:Ljava/lang/String;

    return-object v0
.end method
