.class Lcom/ansca/corona/CoronaSplashScreenApiHandler$1;
.super Ljava/lang/Object;
.source "CoronaSplashScreenApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSplashScreenApiHandler;->showSplashScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaSplashScreenApiHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSplashScreenApiHandler;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler$1;->this$0:Lcom/ansca/corona/CoronaSplashScreenApiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler$1;->this$0:Lcom/ansca/corona/CoronaSplashScreenApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSplashScreenApiHandler;->access$000(Lcom/ansca/corona/CoronaSplashScreenApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler$1;->this$0:Lcom/ansca/corona/CoronaSplashScreenApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSplashScreenApiHandler;->access$000(Lcom/ansca/corona/CoronaSplashScreenApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->showSplashScreen()V

    :cond_0
    return-void
.end method
