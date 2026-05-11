.class Lplugin/facebook/v4a/FacebookFragmentActivity$5;
.super Ljava/lang/Object;
.source "FacebookFragmentActivity.java"

# interfaces
.implements Lpicker/PickerFragment$OnDoneButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookFragmentActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$5;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneButtonClicked(Lpicker/PickerFragment;)V
    .locals 1

    .line 288
    check-cast p1, Lpicker/FriendPickerFragment;

    .line 289
    invoke-virtual {p1}, Lpicker/FriendPickerFragment;->getSelection()Ljava/util/List;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$5;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v0, p1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$300(Lplugin/facebook/v4a/FacebookFragmentActivity;Ljava/util/List;)V

    .line 293
    iget-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$5;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {p1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->finish()V

    return-void
.end method
