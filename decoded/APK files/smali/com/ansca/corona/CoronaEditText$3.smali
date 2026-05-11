.class Lcom/ansca/corona/CoronaEditText$3;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$402(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$402(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$500(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\p{So}+"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    const/4 v1, 0x0

    .line 127
    invoke-interface {p1, v1, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 128
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$402(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$100(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$600(Lcom/ansca/corona/CoronaEditText;)I

    move-result v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v2}, Lcom/ansca/corona/CoronaEditText;->access$600(Lcom/ansca/corona/CoronaEditText;)I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v3}, Lcom/ansca/corona/CoronaEditText;->access$700(Lcom/ansca/corona/CoronaEditText;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    move-object v7, v0

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v7, v5

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/TextEditingTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    .line 147
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$600(Lcom/ansca/corona/CoronaEditText;)I

    move-result v3

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$300(Lcom/ansca/corona/CoronaEditText;)I

    move-result v4

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$200(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ansca/corona/events/TextEditingTask;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 105
    iget-object p2, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p2}, Lcom/ansca/corona/CoronaEditText;->access$100(Lcom/ansca/corona/CoronaEditText;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    new-instance p4, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p4}, Lcom/ansca/corona/CoronaEditText;->access$202(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1, p3}, Lcom/ansca/corona/CoronaEditText;->access$302(Lcom/ansca/corona/CoronaEditText;I)I

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEditText;->access$100(Lcom/ansca/corona/CoronaEditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaEditText;->access$602(Lcom/ansca/corona/CoronaEditText;I)I

    .line 161
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1, p3}, Lcom/ansca/corona/CoronaEditText;->access$802(Lcom/ansca/corona/CoronaEditText;I)I

    .line 162
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {p1, p4}, Lcom/ansca/corona/CoronaEditText;->access$702(Lcom/ansca/corona/CoronaEditText;I)I

    :cond_0
    return-void
.end method
