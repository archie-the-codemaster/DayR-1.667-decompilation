.class public abstract Lcom/ansca/corona/CoronaData;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Table;,
        Lcom/ansca/corona/CoronaData$List;,
        Lcom/ansca/corona/CoronaData$Proxy;,
        Lcom/ansca/corona/CoronaData$String;,
        Lcom/ansca/corona/CoronaData$Double;,
        Lcom/ansca/corona/CoronaData$Boolean;,
        Lcom/ansca/corona/CoronaData$Value;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v1, v2, :cond_1

    .line 69
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result p0

    invoke-static {p0}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object v0

    goto :goto_2

    .line 71
    :cond_1
    sget-object v2, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v1, v2, :cond_2

    .line 72
    new-instance v0, Lcom/ansca/corona/CoronaData$Double;

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    goto :goto_2

    .line 74
    :cond_2
    sget-object v2, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v1, v2, :cond_3

    .line 75
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_3
    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v1, v2, :cond_6

    if-gez p1, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v0

    .line 81
    :cond_4
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x2

    .line 83
    invoke-static {p0, v1}, Lcom/ansca/corona/CoronaData;->from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;

    move-result-object v1

    .line 84
    instance-of v2, v1, Lcom/ansca/corona/CoronaData$Value;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    .line 87
    invoke-static {p0, v2}, Lcom/ansca/corona/CoronaData;->from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    .line 88
    check-cast v1, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    :goto_1
    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 232
    :cond_0
    instance-of v1, p0, Lcom/ansca/corona/CoronaData;

    if-eqz v1, :cond_1

    .line 233
    check-cast p0, Lcom/ansca/corona/CoronaData;

    return-object p0

    .line 238
    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 239
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object v0

    goto/16 :goto_5

    .line 241
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 242
    new-instance v0, Lcom/ansca/corona/CoronaData$Double;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    goto/16 :goto_5

    .line 244
    :cond_3
    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_d

    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 247
    :cond_4
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_5

    .line 248
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 250
    :cond_5
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 251
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 253
    :cond_6
    instance-of v1, p0, Landroid/os/Bundle;

    if-eqz v1, :cond_7

    .line 254
    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/ansca/corona/CoronaData$Table;->from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    goto/16 :goto_5

    .line 256
    :cond_7
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    .line 258
    :try_start_0
    move-object v1, p0

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/ansca/corona/CoronaData$List;->from(Lorg/json/JSONArray;)Lcom/ansca/corona/CoronaData$List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 262
    :catch_0
    :try_start_1
    new-instance v1, Lcom/ansca/corona/CoronaData$String;

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v0, v1

    goto/16 :goto_5

    .line 267
    :cond_8
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    .line 269
    :try_start_2
    move-object v1, p0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ansca/corona/CoronaData$Table;->from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 273
    :catch_1
    :try_start_3
    new-instance v1, Lcom/ansca/corona/CoronaData$String;

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 278
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 279
    new-instance v0, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 280
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_e

    .line 282
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    :cond_a
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 287
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 288
    check-cast p0, Ljava/util/Map;

    .line 289
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    .line 291
    instance-of v3, v2, Lcom/ansca/corona/CoronaData$Value;

    if-eqz v3, :cond_b

    .line 292
    check-cast v2, Lcom/ansca/corona/CoronaData$Value;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_2

    .line 297
    :cond_c
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_e

    .line 298
    new-instance v0, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 299
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 300
    invoke-static {v1}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    goto :goto_3

    .line 245
    :cond_d
    :goto_4
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    :catch_2
    :cond_e
    :goto_5
    return-object v0
.end method

.method public static from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 112
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-object v0

    .line 116
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v3, "boolean"

    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x3

    const-string v6, "value"

    if-eqz v3, :cond_3

    .line 124
    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    const-string v3, "double"

    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 129
    new-instance v0, Lcom/ansca/corona/CoronaData$Double;

    invoke-direct {v0, v2, v3}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    goto/16 :goto_2

    :cond_4
    const-string v3, "string"

    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    sget-object v0, Lcom/ansca/corona/CoronaData$String;->EMPTY:Lcom/ansca/corona/CoronaData$String;

    .line 133
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 137
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v0, v2}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v3, "proxy"

    .line 141
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    new-instance v0, Lcom/ansca/corona/CoronaData$Proxy;

    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    goto/16 :goto_2

    :cond_6
    const-string v3, "list"

    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 145
    new-instance v3, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v3}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 147
    :cond_7
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    .line 148
    invoke-virtual {v3, v0}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    if-nez v0, :cond_7

    move-object v0, v3

    goto/16 :goto_2

    :cond_8
    const-string v3, "table"

    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 153
    new-instance v4, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v4}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 155
    :cond_9
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    if-ne v7, v2, :cond_d

    .line 156
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "entry"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v7, v0

    move-object v8, v7

    .line 160
    :cond_a
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v10

    if-ne v10, v2, :cond_c

    .line 162
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "key"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 163
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v10

    .line 164
    instance-of v11, v10, Lcom/ansca/corona/CoronaData$Value;

    if-eqz v11, :cond_a

    .line 165
    move-object v7, v10

    check-cast v7, Lcom/ansca/corona/CoronaData$Value;

    goto :goto_1

    .line 168
    :cond_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 169
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v8

    goto :goto_1

    :cond_c
    if-ne v10, v5, :cond_a

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 177
    invoke-virtual {v4, v7, v8}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0

    :cond_d
    if-ne v7, v5, :cond_9

    .line 180
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v0, v4

    .line 189
    :cond_e
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v5, :cond_f

    .line 190
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    .line 194
    :cond_f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_2

    :cond_10
    :goto_3
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .line 23
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract pushTo(Lcom/naef/jnlua/LuaState;)Z
.end method

.method public abstract writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
