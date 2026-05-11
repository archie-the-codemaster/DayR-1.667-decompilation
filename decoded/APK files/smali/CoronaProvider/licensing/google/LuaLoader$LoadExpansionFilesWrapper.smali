.class public LCoronaProvider/licensing/google/LuaLoader$LoadExpansionFilesWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadExpansionFilesWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method public constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .line 565
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$LoadExpansionFilesWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "loadExpansionFiles"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 573
    iget-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$LoadExpansionFilesWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {p1}, LCoronaProvider/licensing/google/LuaLoader;->access$800(LCoronaProvider/licensing/google/LuaLoader;)V

    const/4 p1, 0x0

    return p1
.end method
