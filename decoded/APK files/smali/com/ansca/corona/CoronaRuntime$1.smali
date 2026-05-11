.class Lcom/ansca/corona/CoronaRuntime$1;
.super Ljava/lang/Object;
.source "CoronaRuntime.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaRuntime;->insertFakeNativeLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntime$1;->this$0:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    const/4 v0, 0x1

    .line 336
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method
