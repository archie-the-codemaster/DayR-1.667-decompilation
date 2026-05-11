.class Lpicker/PickerFragment$LoadingStrategy$2;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lpicker/GraphObjectPagingLoader$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PickerFragment$LoadingStrategy;->attach(Lpicker/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpicker/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lpicker/PickerFragment$LoadingStrategy;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lpicker/PickerFragment$LoadingStrategy$2;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/facebook/FacebookException;Lpicker/GraphObjectPagingLoader;)V
    .locals 1

    .line 877
    iget-object p2, p0, Lpicker/PickerFragment$LoadingStrategy$2;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object p2, p2, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-virtual {p2}, Lpicker/PickerFragment;->hideActivityCircle()V

    .line 878
    iget-object p2, p0, Lpicker/PickerFragment$LoadingStrategy$2;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object p2, p2, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-static {p2}, Lpicker/PickerFragment;->access$500(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnErrorListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 879
    iget-object p2, p0, Lpicker/PickerFragment$LoadingStrategy$2;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object p2, p2, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-static {p2}, Lpicker/PickerFragment;->access$500(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnErrorListener;

    move-result-object p2

    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy$2;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-interface {p2, v0, p1}, Lpicker/PickerFragment$OnErrorListener;->onError(Lpicker/PickerFragment;Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method
