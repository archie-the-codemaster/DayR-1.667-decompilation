.class Lcom/ansca/corona/CoronaEditText$4;
.super Landroid/text/method/TextKeyListener;
.source "CoronaEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaEditText;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$4;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0, p2, p3}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$4;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$900(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$4;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$4;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v1

    invoke-interface {v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->inputTypeFlagsNoSuggestions()I

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method
