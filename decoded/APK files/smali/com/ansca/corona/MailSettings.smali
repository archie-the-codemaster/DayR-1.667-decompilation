.class public Lcom/ansca/corona/MailSettings;
.super Ljava/lang/Object;
.source "MailSettings.java"


# instance fields
.field private fBccList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fBody:Ljava/lang/String;

.field private fCcList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fFileAttachments:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private fIsHtml:Z

.field private fSubject:Ljava/lang/String;

.field private fToList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    return-void
.end method

.method private static addFileAttachmentObjectToCollection(Landroid/content/Context;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashSet<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 374
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_6

    .line 376
    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 379
    :cond_1
    instance-of v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_6

    .line 381
    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 382
    invoke-static {p0, v2}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_2
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_6

    .line 388
    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 389
    invoke-static {p0, p2}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 392
    :cond_3
    instance-of v0, p2, [Ljava/io/File;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_6

    .line 394
    check-cast p2, [Ljava/io/File;

    check-cast p2, [Ljava/io/File;

    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 395
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    :cond_4
    instance-of p0, p2, Landroid/net/Uri;

    if-eqz p0, :cond_5

    .line 400
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 402
    :cond_5
    instance-of p0, p2, [Landroid/net/Uri;

    if-eqz p0, :cond_6

    .line 403
    check-cast p2, [Landroid/net/Uri;

    check-cast p2, [Landroid/net/Uri;

    array-length p0, p2

    :goto_2
    if-ge v1, p0, :cond_6

    aget-object v0, p2, v1

    .line 404
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private static addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 335
    :cond_0
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 338
    :cond_1
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 339
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 340
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_2
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 344
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 345
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 346
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_4
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 351
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method public static from(Landroid/content/Context;Ljava/util/HashMap;)Lcom/ansca/corona/MailSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ansca/corona/MailSettings;"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/ansca/corona/MailSettings;

    invoke-direct {v0}, Lcom/ansca/corona/MailSettings;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to"

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getToList()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ansca/corona/MailSettings;->addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v3, "cc"

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getCcList()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ansca/corona/MailSettings;->addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v3, "bcc"

    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getBccList()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ansca/corona/MailSettings;->addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v3, "subject"

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 290
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 291
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MailSettings;->setSubject(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "body"

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 295
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 296
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MailSettings;->setBody(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v3, "isbodyhtml"

    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 300
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 301
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MailSettings;->setHtmlFlag(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "attachment"

    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_9

    .line 306
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 307
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getFileAttachments()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/ansca/corona/MailSettings;->addFileAttachmentObjectToCollection(Landroid/content/Context;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    :cond_9
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getFileAttachments()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/ansca/corona/MailSettings;->addFileAttachmentObjectToCollection(Landroid/content/Context;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public static fromUrl(Ljava/lang/String;)Lcom/ansca/corona/MailSettings;
    .locals 8

    .line 213
    new-instance v0, Lcom/ansca/corona/MailSettings;

    invoke-direct {v0}, Lcom/ansca/corona/MailSettings;-><init>()V

    if-eqz p0, :cond_6

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 222
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, ","

    if-eqz v1, :cond_1

    .line 224
    :try_start_1
    invoke-virtual {p0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 225
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getToList()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 230
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getCcList()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p0}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {p0}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MailSettings;->setSubject(Ljava/lang/String;)V

    .line 236
    :cond_3
    invoke-virtual {p0}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MailSettings;->setBody(Ljava/lang/String;)V

    .line 239
    :cond_4
    invoke-virtual {p0}, Landroid/net/MailTo;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bcc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 242
    invoke-virtual {v0}, Lcom/ansca/corona/MailSettings;->getBccList()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public getBccList()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCcList()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getFileAttachments()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getToList()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 109
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    return-void
.end method

.method public setHtmlFlag(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 93
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    return-void
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SEND"

    .line 146
    :goto_0
    iget-boolean v2, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    if-eqz v2, :cond_1

    const-string v2, "text/html"

    goto :goto_1

    :cond_1
    const-string v2, "plain/text"

    .line 147
    :goto_1
    iget-object v3, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_5

    .line 151
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 154
    new-instance v2, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v2, v3}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v3, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lcom/ansca/corona/storage/FileServices;->getMimeTypeFrom(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "*/*"

    if-nez v5, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object v7, v5

    :goto_2
    const/4 v5, 0x1

    .line 165
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v2, v8}, Lcom/ansca/corona/storage/FileServices;->getMimeTypeFrom(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eq v7, v8, :cond_3

    move-object v7, v6

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    move-object v2, v7

    .line 175
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 178
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 181
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "android.intent.extra.CC"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 184
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "android.intent.extra.BCC"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 190
    iget-boolean v0, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    :goto_4
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 192
    :cond_b
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const-string v2, "android.intent.extra.STREAM"

    if-le v0, v1, :cond_c

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    iget-object v4, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_5

    .line 197
    :cond_c
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 198
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 201
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_e
    return-object v3
.end method
