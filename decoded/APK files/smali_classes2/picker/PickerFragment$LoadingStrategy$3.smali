.class Lpicker/PickerFragment$LoadingStrategy$3;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lpicker/GraphObjectAdapter$OnErrorListener;


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

    .line 887
    iput-object p1, p0, Lpicker/PickerFragment$LoadingStrategy$3;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lpicker/GraphObjectAdapter;Lcom/facebook/FacebookException;)V
    .locals 1

    .line 890
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy$3;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object p1, p1, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-static {p1}, Lpicker/PickerFragment;->access$500(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 891
    iget-object p1, p0, Lpicker/PickerFragment$LoadingStrategy$3;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object p1, p1, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-static {p1}, Lpicker/PickerFragment;->access$500(Lpicker/PickerFragment;)Lpicker/PickerFragment$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lpicker/PickerFragment$LoadingStrategy$3;->this$1:Lpicker/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lpicker/PickerFragment$LoadingStrategy;->this$0:Lpicker/PickerFragment;

    invoke-interface {p1, v0, p2}, Lpicker/PickerFragment$OnErrorListener;->onError(Lpicker/PickerFragment;Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method
