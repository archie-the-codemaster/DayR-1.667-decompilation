.class Lpicker/PickerFragment$5;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PickerFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V
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

    .line 641
    iput-object p1, p0, Lpicker/PickerFragment$5;->this$0:Lpicker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 644
    iget-object p1, p0, Lpicker/PickerFragment$5;->this$0:Lpicker/PickerFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpicker/PickerFragment;->logAppEvents(Z)V

    .line 645
    iget-object p1, p0, Lpicker/PickerFragment$5;->this$0:Lpicker/PickerFragment;

    invoke-static {p1, v0}, Lpicker/PickerFragment;->access$202(Lpicker/PickerFragment;Z)Z

    .line 647
    iget-object p1, p0, Lpicker/PickerFragment$5;->this$0:Lpicker/PickerFragment;

    invoke-static {p1}, Lpicker/PickerFragment;->access$300(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnDoneButtonClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 648
    iget-object p1, p0, Lpicker/PickerFragment$5;->this$0:Lpicker/PickerFragment;

    invoke-static {p1}, Lpicker/PickerFragment;->access$300(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnDoneButtonClickedListener;

    move-result-object p1

    iget-object v0, p0, Lpicker/PickerFragment$5;->this$0:Lpicker/PickerFragment;

    invoke-interface {p1, v0}, Lpicker/PickerFragment$OnDoneButtonClickedListener;->onDoneButtonClicked(Lpicker/PickerFragment;)V

    :cond_0
    return-void
.end method
