.class public Lcom/ansca/corona/CoronaData$Table;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ansca/corona/CoronaData;",
        "Ljava/util/Map<",
        "Lcom/ansca/corona/CoronaData$Value;",
        "Lcom/ansca/corona/CoronaData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ansca/corona/CoronaData$Table;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ansca/corona/CoronaData$Value;",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 993
    new-instance v0, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Table;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 996
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1283
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 1284
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1285
    new-instance v3, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v3, v2}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1306
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 1307
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1309
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1311
    new-instance v3, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v3, v2}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clone()Lcom/ansca/corona/CoronaData$Table;
    .locals 4

    .line 1006
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData$Table;

    .line 1007
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    .line 1008
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1009
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1010
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaData$Value;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData$Value;

    .line 1011
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaData;

    if-eqz v2, :cond_1

    .line 1013
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v2

    .line 1015
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/ansca/corona/CoronaData$Value;",
            "Lcom/ansca/corona/CoronaData;",
            ">;>;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1070
    instance-of v0, p1, Lcom/ansca/corona/CoronaData$Table;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    check-cast p1, Lcom/ansca/corona/CoronaData$Table;

    iget-object p1, p1, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaData;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 988
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table;->get(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ansca/corona/CoronaData$Value;",
            ">;"
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 5

    .line 1189
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 1191
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1197
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 1198
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1199
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v4, p1}, Lcom/ansca/corona/CoronaData$Value;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    .line 1201
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v3, p1}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    .line 1202
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->rawSet(I)V

    goto :goto_0

    :cond_2
    return v1
.end method

.method public put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaData;

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 988
    check-cast p1, Lcom/ansca/corona/CoronaData$Value;

    check-cast p2, Lcom/ansca/corona/CoronaData;

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/ansca/corona/CoronaData$Value;",
            "+",
            "Lcom/ansca/corona/CoronaData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaData;

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 988
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table;->remove(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "table"

    const-string v1, ""

    .line 1214
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1216
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "entry"

    .line 1217
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "key"

    .line 1219
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v6, p1}, Lcom/ansca/corona/CoronaData$Value;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1223
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "value"

    .line 1224
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v3, p1}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1228
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1230
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1233
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1244
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 1249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1254
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    int-to-byte v3, v2

    .line 1258
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    if-eqz v2, :cond_0

    .line 1262
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_3
    return-void
.end method
