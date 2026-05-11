.class Lpicker/PlacePickerFragment$SearchTextWatcher;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/PlacePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PlacePickerFragment;


# direct methods
.method private constructor <init>(Lpicker/PlacePickerFragment;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lpicker/PlacePickerFragment$SearchTextWatcher;->this$0:Lpicker/PlacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpicker/PlacePickerFragment;Lpicker/PlacePickerFragment$1;)V
    .locals 0

    .line 503
    invoke-direct {p0, p1}, Lpicker/PlacePickerFragment$SearchTextWatcher;-><init>(Lpicker/PlacePickerFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 511
    iget-object p2, p0, Lpicker/PlacePickerFragment$SearchTextWatcher;->this$0:Lpicker/PlacePickerFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lpicker/PlacePickerFragment;->onSearchBoxTextChanged(Ljava/lang/String;Z)V

    return-void
.end method
