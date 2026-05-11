.class abstract Lpicker/PickerFragment$PickerFragmentAdapter;
.super Lpicker/GraphObjectAdapter;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PickerFragmentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PickerFragment;


# direct methods
.method public constructor <init>(Lpicker/PickerFragment;Landroid/content/Context;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lpicker/PickerFragment$PickerFragmentAdapter;->this$0:Lpicker/PickerFragment;

    .line 1070
    invoke-direct {p0, p2}, Lpicker/GraphObjectAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 1

    .line 1075
    iget-object v0, p0, Lpicker/PickerFragment$PickerFragmentAdapter;->this$0:Lpicker/PickerFragment;

    invoke-static {v0}, Lpicker/PickerFragment;->access$600(Lpicker/PickerFragment;)Lpicker/PickerFragment$SelectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpicker/PickerFragment$SelectionStrategy;->isSelected(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 1080
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez p2, :cond_1

    .line 1081
    iget-object p2, p0, Lpicker/PickerFragment$PickerFragmentAdapter;->this$0:Lpicker/PickerFragment;

    invoke-static {p2}, Lpicker/PickerFragment;->access$600(Lpicker/PickerFragment;)Lpicker/PickerFragment$SelectionStrategy;

    move-result-object p2

    invoke-virtual {p2}, Lpicker/PickerFragment$SelectionStrategy;->shouldShowCheckBoxIfUnselected()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1083
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
