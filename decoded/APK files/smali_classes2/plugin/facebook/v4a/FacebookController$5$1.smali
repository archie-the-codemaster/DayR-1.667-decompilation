.class Lplugin/facebook/v4a/FacebookController$5$1;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookController$5;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookController$5;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$5$1;->this$0:Lplugin/facebook/v4a/FacebookController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 533
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
