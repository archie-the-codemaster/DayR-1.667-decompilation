.class Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;
.super Ljava/lang/Object;
.source "DefaultJavaReflector.java"

# interfaces
.implements Lcom/naef/jnlua/DefaultJavaReflector$Accessor;
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvocableAccessor"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private invocables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;)V"
        }
    .end annotation

    .line 699
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    .line 701
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    return-void
.end method

.method private dispatchInvocable(Lcom/naef/jnlua/LuaState;Z)Lcom/naef/jnlua/DefaultJavaReflector$Invocable;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 883
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 886
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 887
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 888
    invoke-interface {v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    move/from16 v5, p2

    if-eq v4, v5, :cond_0

    .line 889
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 895
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 896
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 897
    invoke-interface {v6}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 898
    invoke-interface {v6}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_2

    .line 899
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 902
    :cond_3
    invoke-interface {v6}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v6

    if-eq v3, v6, :cond_2

    .line 903
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 909
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->getConverter()Lcom/naef/jnlua/Converter;

    move-result-object v5

    .line 910
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 911
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 912
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_5

    add-int/lit8 v9, v8, 0x2

    .line 915
    invoke-interface {v7, v8}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v10

    .line 914
    invoke-interface {v5, v1, v9, v10}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result v9

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_6

    .line 917
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 927
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-nez v9, :cond_9

    .line 928
    invoke-interface {v10}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-nez v7, :cond_b

    .line 929
    invoke-interface {v10}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    :goto_7
    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    if-eqz v7, :cond_e

    if-eqz v9, :cond_e

    .line 932
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 933
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 934
    invoke-interface {v7}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 935
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 941
    :cond_e
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 942
    :cond_f
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 943
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 944
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-ne v10, v7, :cond_10

    goto :goto_a

    .line 949
    :cond_10
    invoke-interface {v7}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v11

    invoke-interface {v10}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v12

    .line 948
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_b
    if-ge v12, v11, :cond_14

    add-int/lit8 v14, v12, 0x2

    .line 953
    invoke-interface {v7, v12}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v15

    .line 952
    invoke-interface {v5, v1, v14, v15}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result v15

    .line 955
    invoke-interface {v10, v12}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v8

    .line 954
    invoke-interface {v5, v1, v14, v8}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result v8

    if-le v8, v15, :cond_11

    goto :goto_a

    :cond_11
    if-nez v13, :cond_13

    if-eq v15, v8, :cond_12

    goto :goto_c

    :cond_12
    const/4 v13, 0x0

    goto :goto_d

    :cond_13
    :goto_c
    const/4 v13, 0x1

    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_14
    if-nez v13, :cond_15

    goto :goto_a

    .line 969
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 975
    :cond_16
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 976
    :cond_17
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 977
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 978
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-ne v8, v6, :cond_18

    goto :goto_f

    .line 983
    :cond_18
    invoke-interface {v6}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v9

    invoke-interface {v8}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v10

    .line 982
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_10
    if-ge v10, v9, :cond_1c

    .line 986
    invoke-interface {v6, v10}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v12

    .line 987
    invoke-interface {v8, v10}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v13

    .line 988
    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_19

    goto :goto_f

    :cond_19
    if-nez v11, :cond_1b

    if-eq v12, v13, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v11, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v11, 0x1

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1c
    if-nez v11, :cond_1d

    goto :goto_f

    .line 1001
    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 1007
    :cond_1e
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1010
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v3, v4, :cond_1f

    .line 1015
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    return-object v1

    .line 1011
    :cond_1f
    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getSignatureAmbivalenceException(Lcom/naef/jnlua/LuaState;Ljava/util/Set;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v1

    throw v1

    .line 1008
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getSignatureMismatchException(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v1

    goto :goto_14

    :goto_13
    throw v1

    :goto_14
    goto :goto_13
.end method

.method private getJavaSignatureString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1073
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 1074
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 1076
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLuaCallSignature(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;
    .locals 8

    .line 849
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 850
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x2

    .line 852
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v5

    .line 853
    sget-object v6, Lcom/naef/jnlua/DefaultJavaReflector$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v5}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v1, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 871
    aput-object v5, v2, v3

    goto :goto_2

    .line 859
    :cond_0
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 860
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v4

    .line 861
    instance-of v5, v4, Lcom/naef/jnlua/TypedJavaObject;

    if-eqz v5, :cond_1

    .line 862
    check-cast v4, Lcom/naef/jnlua/TypedJavaObject;

    invoke-interface {v4}, Lcom/naef/jnlua/TypedJavaObject;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_2

    .line 864
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_2

    .line 867
    :cond_2
    sget-object v4, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    aput-object v4, v2, v3

    goto :goto_2

    .line 855
    :cond_3
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isJavaFunction(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1200()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    :goto_1
    aput-object v4, v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    :cond_5
    new-instance p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, v2}, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private getLuaSignatureString(Lcom/naef/jnlua/LuaState;)Ljava/lang/String;
    .locals 4

    .line 1058
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1059
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 1062
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v3, v2, 0x2

    .line 1064
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSignatureAmbivalenceException(Lcom/naef/jnlua/LuaState;Ljava/util/Set;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Ljava/util/Set<",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;)",
            "Lcom/naef/jnlua/LuaRuntimeException;"
        }
    .end annotation

    .line 1036
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1038
    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getWhat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1039
    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getLuaSignatureString(Lcom/naef/jnlua/LuaState;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x3

    aput-object p1, v1, v5

    const-string p1, "%s \'%s(%s)\' on class %s is ambivalent among "

    .line 1037
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    const-string v5, ", "

    .line 1046
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    .line 1048
    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1049
    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getJavaSignatureString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    const-string v1, "\'%s(%s)\'"

    .line 1048
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1051
    :cond_1
    new-instance p1, Lcom/naef/jnlua/LuaRuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private getSignatureMismatchException(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 4

    .line 1024
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1025
    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getWhat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    .line 1026
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1027
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getLuaSignatureString(Lcom/naef/jnlua/LuaState;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "no %s of class %s matches \'%s(%s)\'"

    .line 1024
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhat()Ljava/lang/String;
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getWhat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 12

    .line 761
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 762
    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v2, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 763
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 765
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "class %s is not a subclass of %s"

    .line 764
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-virtual {p1, v1, v3, v4}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    .line 771
    :cond_0
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getLuaCallSignature(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    move-result-object v2

    .line 773
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v3}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v3}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 777
    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v4}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v3, :cond_3

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 780
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->dispatchInvocable(Lcom/naef/jnlua/LuaState;Z)Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    move-result-object v3

    .line 781
    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v4}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 783
    :try_start_1
    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v4}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 784
    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v4}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 786
    :cond_2
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v3}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 789
    :goto_1
    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 794
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    .line 795
    invoke-interface {v3}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v4

    .line 796
    new-array v5, v4, [Ljava/lang/Object;

    .line 797
    invoke-interface {v3}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v4, -0x1

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v7, 0x2

    .line 800
    invoke-interface {v3, v7}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v9

    .line 799
    invoke-virtual {p1, v8, v9}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 803
    :cond_4
    invoke-interface {v3, v8}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v4

    sub-int v7, v2, v8

    .line 802
    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v8

    move v4, v8

    :goto_4
    if-ge v4, v2, :cond_6

    .line 806
    aget-object v7, v5, v8

    sub-int v9, v4, v8

    add-int/lit8 v10, v4, 0x2

    .line 808
    invoke-interface {v3, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v11

    .line 807
    invoke-virtual {p1, v10, v11}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .line 806
    invoke-static {v7, v9, v10}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_6

    add-int/lit8 v7, v2, 0x2

    .line 813
    invoke-interface {v3, v2}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v8

    .line 812
    invoke-virtual {p1, v7, v8}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 820
    :cond_6
    :try_start_2
    invoke-interface {v3, v0, v5}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 832
    invoke-interface {v3}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_8

    .line 833
    invoke-interface {v3}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isRawReturn()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 834
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    goto :goto_6

    .line 836
    :cond_7
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    :goto_6
    return v1

    :cond_8
    return v6

    :catch_0
    move-exception p1

    .line 828
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 824
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 822
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception p1

    .line 777
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public isNotStatic()Z
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 740
    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    .line 750
    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, p2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 726
    invoke-virtual {p1, p0}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    return-void
.end method

.method public write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 2

    .line 731
    iget-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {p1, p2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    .line 732
    new-instance p2, Lcom/naef/jnlua/LuaRuntimeException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 734
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getWhat()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "attempt to write class %s with accessor \'%s\' (a %s)"

    .line 732
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
