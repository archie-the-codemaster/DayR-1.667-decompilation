.class final Lplugin/facebook/v4a/FacebookController$7;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController;->setPluginsLuaVariablesAsync(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessToken:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/facebook/AccessToken;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$7;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 800
    iget-object p1, p0, Lplugin/facebook/v4a/FacebookController$7;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-static {p1}, Lplugin/facebook/v4a/FacebookController;->setPluginsLuaVariables(Lcom/facebook/AccessToken;)V

    return-void
.end method
