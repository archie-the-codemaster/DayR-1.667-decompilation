.class Lpicker/PickerFragment$4;
.super Lcom/facebook/AccessTokenTracker;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PickerFragment;


# direct methods
.method constructor <init>(Lpicker/PickerFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lpicker/PickerFragment$4;->this$0:Lpicker/PickerFragment;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lpicker/PickerFragment$4;->this$0:Lpicker/PickerFragment;

    invoke-static {p1}, Lpicker/PickerFragment;->access$100(Lpicker/PickerFragment;)V

    return-void
.end method
