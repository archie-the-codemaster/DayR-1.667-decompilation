.class public Lcom/ansca/corona/permissions/PermissionsSettings;
.super Ljava/lang/Object;
.source "PermissionsSettings.java"


# static fields
.field private static fPermissionSettingsToBeServiced:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/permissions/PermissionsSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fListener:I

.field private fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private fPermissions:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fRationaleDescription:Ljava/lang/String;

.field private fRationaleTitle:Ljava/lang/String;

.field private fSettingsRedirectDescription:Ljava/lang/String;

.field private fSettingsRedirectTitle:Ljava/lang/String;

.field private fUrgency:Lcom/ansca/corona/permissions/PermissionUrgency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissionSettingsToBeServiced:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 74
    sget-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    invoke-direct {p0, p1, p2, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;ILcom/ansca/corona/permissions/PermissionUrgency;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/ansca/corona/permissions/PermissionUrgency;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    .line 85
    iput p2, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fListener:I

    .line 86
    iput-object p3, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fUrgency:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/util/LinkedHashSet;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    invoke-direct {p0, p1, p2, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/util/LinkedHashSet;ILcom/ansca/corona/permissions/PermissionUrgency;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;ILcom/ansca/corona/permissions/PermissionUrgency;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ansca/corona/permissions/PermissionUrgency;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    .line 140
    :goto_0
    iput p2, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fListener:I

    .line 141
    iput-object p3, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fUrgency:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    .line 101
    sget-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    invoke-direct {p0, p1, p2, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>([Ljava/lang/String;ILcom/ansca/corona/permissions/PermissionUrgency;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILcom/ansca/corona/permissions/PermissionUrgency;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 108
    array-length v0, p1

    if-lez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    .line 113
    :goto_0
    iput p2, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fListener:I

    .line 114
    iput-object p3, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fUrgency:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-void
.end method

.method public static from(Ljava/util/HashMap;)Lcom/ansca/corona/permissions/PermissionsSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ansca/corona/permissions/PermissionsSettings;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apppermission"

    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "apppermissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v3, "listener"

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 347
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->setListener(I)V

    goto :goto_0

    :cond_4
    const-string v3, "urgency"

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 352
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ansca/corona/permissions/PermissionUrgency;->from(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionUrgency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->setUrgency(Lcom/ansca/corona/permissions/PermissionUrgency;)V

    goto :goto_0

    :cond_5
    const-string v3, "rationaletitle"

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 356
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 357
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->setRationaleTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "rationaledescription"

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 361
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 362
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->setRationaleDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "settingsredirecttitle"

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 366
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 367
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->setSettingsRedirectTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "settingsredirectdescription"

    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 372
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->setSettingsRedirectDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_9
    :goto_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 324
    invoke-virtual {v0}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 326
    :cond_a
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 327
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 328
    invoke-virtual {v0}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 331
    :cond_b
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_d

    .line 332
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 333
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 334
    invoke-virtual {v0}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 338
    :cond_d
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 340
    :try_start_0
    invoke-virtual {v0}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method public static getSettingsToBeServiced()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/permissions/PermissionsSettings;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissionSettingsToBeServiced:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getListener()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fListener:I

    return v0
.end method

.method public getPermissions()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getRationaleDescription()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fRationaleDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRationaleTitle()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fRationaleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsRedirectDescription()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fSettingsRedirectDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsRedirectTitle()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fSettingsRedirectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrgency()Lcom/ansca/corona/permissions/PermissionUrgency;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fUrgency:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object v0
.end method

.method public markAsServiced()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public needsService()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public resetServiceStatus()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fNeedsService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setListener(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fListener:I

    return-void
.end method

.method public setPermissions(Ljava/util/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fPermissions:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public setRationaleDescription(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 229
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fRationaleDescription:Ljava/lang/String;

    return-void
.end method

.method public setRationaleTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 211
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fRationaleTitle:Ljava/lang/String;

    return-void
.end method

.method public setSettingsRedirectDescription(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 265
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fSettingsRedirectDescription:Ljava/lang/String;

    return-void
.end method

.method public setSettingsRedirectTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 247
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fSettingsRedirectTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrgency(Lcom/ansca/corona/permissions/PermissionUrgency;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/ansca/corona/permissions/PermissionsSettings;->fUrgency:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-void
.end method
