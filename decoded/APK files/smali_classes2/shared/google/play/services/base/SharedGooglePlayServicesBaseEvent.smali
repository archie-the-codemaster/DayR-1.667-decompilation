.class Lshared/google/play/services/base/SharedGooglePlayServicesBaseEvent;
.super Ljava/lang/Object;
.source "SharedGooglePlayServicesBaseEvent.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "sharedGooglePlayServicesBase"


# instance fields
.field private final mListener:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lshared/google/play/services/base/SharedGooglePlayServicesBaseEvent;->mListener:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "sharedGooglePlayServicesBase"

    .line 25
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget v0, p0, Lshared/google/play/services/base/SharedGooglePlayServicesBaseEvent;->mListener:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
