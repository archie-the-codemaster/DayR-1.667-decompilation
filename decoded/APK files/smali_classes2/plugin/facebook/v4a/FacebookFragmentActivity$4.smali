.class Lplugin/facebook/v4a/FacebookFragmentActivity$4;
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

    .line 260
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$4;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneButtonClicked(Lpicker/PickerFragment;)V
    .locals 2

    .line 263
    move-object v0, p1

    check-cast v0, Lpicker/PlacePickerFragment;

    invoke-virtual {v0}, Lpicker/PlacePickerFragment;->getSelection()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$4;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v1, v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$200(Lplugin/facebook/v4a/FacebookFragmentActivity;Lorg/json/JSONObject;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$4;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 270
    invoke-virtual {p1}, Lpicker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 273
    iget-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$4;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {p1}, Lplugin/facebook/v4a/FacebookFragmentActivity;->finish()V

    return-void
.end method
