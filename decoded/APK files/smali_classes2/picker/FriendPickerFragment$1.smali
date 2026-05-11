.class Lpicker/FriendPickerFragment$1;
.super Lpicker/PickerFragment$PickerFragmentAdapter;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/FriendPickerFragment;->createAdapter()Lpicker/PickerFragment$PickerFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/FriendPickerFragment;


# direct methods
.method constructor <init>(Lpicker/FriendPickerFragment;Landroid/content/Context;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lpicker/FriendPickerFragment$1;->this$0:Lpicker/FriendPickerFragment;

    invoke-direct {p0, p1, p2}, Lpicker/PickerFragment$PickerFragmentAdapter;-><init>(Lpicker/PickerFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 1

    .line 234
    sget v0, Lplugin/facebook/v4a/R$drawable;->profile_default_icon:I

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lorg/json/JSONObject;)I
    .locals 0

    .line 229
    sget p1, Lplugin/facebook/v4a/R$layout;->picker_list_row:I

    return p1
.end method
