.class Lcom/ansca/corona/Controller$4;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$buttonLabels:[Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$4;->val$buttonLabels:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/Controller$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/ansca/corona/Controller$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1080
    iget-object v0, p0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$300(Lcom/ansca/corona/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1081
    new-instance v1, Lcom/ansca/corona/Controller$4$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$4$1;-><init>(Lcom/ansca/corona/Controller$4;)V

    .line 1106
    new-instance v2, Lcom/ansca/corona/Controller$4$2;

    invoke-direct {v2, p0}, Lcom/ansca/corona/Controller$4$2;-><init>(Lcom/ansca/corona/Controller$4;)V

    .line 1116
    iget-object v3, p0, Lcom/ansca/corona/Controller$4;->val$buttonLabels:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    array-length v3, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/ansca/corona/Controller$4;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1119
    iget-object v1, p0, Lcom/ansca/corona/Controller$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-gt v3, v5, :cond_3

    .line 1122
    iget-object v5, p0, Lcom/ansca/corona/Controller$4;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1123
    iget-object v5, p0, Lcom/ansca/corona/Controller$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1124
    iget-object v5, p0, Lcom/ansca/corona/Controller$4;->val$buttonLabels:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 1126
    iget-object v6, p0, Lcom/ansca/corona/Controller$4;->val$buttonLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    const/4 v5, 0x2

    if-le v3, v5, :cond_4

    .line 1129
    iget-object v3, p0, Lcom/ansca/corona/Controller$4;->val$buttonLabels:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1133
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ansca/corona/Controller$4;->val$title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ansca/corona/Controller$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1134
    iget-object v3, p0, Lcom/ansca/corona/Controller$4;->val$buttonLabels:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1136
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1139
    iget-object v1, p0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v1

    .line 1140
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ansca/corona/Controller;->access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1141
    iget-object v0, p0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$500(Lcom/ansca/corona/Controller;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1142
    iget-object v0, p0, Lcom/ansca/corona/Controller$4;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$500(Lcom/ansca/corona/Controller;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1143
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
