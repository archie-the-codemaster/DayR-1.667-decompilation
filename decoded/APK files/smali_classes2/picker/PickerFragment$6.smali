.class Lpicker/PickerFragment$6;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/PickerFragment;
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

    .line 772
    iput-object p1, p0, Lpicker/PickerFragment$6;->this$0:Lpicker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 779
    iget-object p1, p0, Lpicker/PickerFragment$6;->this$0:Lpicker/PickerFragment;

    invoke-static {p1}, Lpicker/PickerFragment;->access$400(Lpicker/PickerFragment;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
