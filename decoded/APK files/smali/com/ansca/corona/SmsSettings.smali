.class public Lcom/ansca/corona/SmsSettings;
.super Ljava/lang/Object;
.source "SmsSettings.java"


# instance fields
.field private fRecipients:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    return-void
.end method

.method public static from(Ljava/util/HashMap;)Lcom/ansca/corona/SmsSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ansca/corona/SmsSettings;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/ansca/corona/SmsSettings;

    invoke-direct {v0}, Lcom/ansca/corona/SmsSettings;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v0}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_3
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 115
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 116
    invoke-virtual {v0}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    :cond_4
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 120
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 121
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 122
    invoke-virtual {v0}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    :cond_6
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 128
    :try_start_0
    invoke-virtual {v0}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_7
    const-string v3, "body"

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 135
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/SmsSettings;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public getRecipients()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 52
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    return-void
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 6

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sms:"

    .line 63
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v3, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    if-nez v1, :cond_1

    const-string v1, ";"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    const-string v2, "sms_body"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method
