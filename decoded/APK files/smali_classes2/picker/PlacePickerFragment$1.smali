.class Lpicker/PlacePickerFragment$1;
.super Lpicker/PickerFragment$PickerFragmentAdapter;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PlacePickerFragment;->createAdapter()Lpicker/PickerFragment$PickerFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PlacePickerFragment;


# direct methods
.method constructor <init>(Lpicker/PlacePickerFragment;Landroid/content/Context;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lpicker/PlacePickerFragment$1;->this$0:Lpicker/PlacePickerFragment;

    invoke-direct {p0, p1, p2}, Lpicker/PickerFragment$PickerFragmentAdapter;-><init>(Lpicker/PickerFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 1

    .line 380
    sget v0, Lplugin/facebook/v4a/R$drawable;->picker_place_default_icon:I

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lorg/json/JSONObject;)I
    .locals 0

    .line 375
    sget p1, Lplugin/facebook/v4a/R$layout;->picker_placepickerfragment_list_row:I

    return p1
.end method

.method protected getSubTitleOfGraphObject(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 6

    const-string v0, "category"

    .line 359
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "were_here_count"

    .line 360
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 364
    iget-object v3, p0, Lpicker/PlacePickerFragment$1;->this$0:Lpicker/PlacePickerFragment;

    sget v4, Lplugin/facebook/v4a/R$string;->picker_placepicker_subtitle_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v5}, Lpicker/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 366
    iget-object v0, p0, Lpicker/PlacePickerFragment$1;->this$0:Lpicker/PlacePickerFragment;

    sget v3, Lplugin/facebook/v4a/R$string;->picker_placepicker_subtitle_were_here_only_format:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lpicker/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 368
    iget-object p1, p0, Lpicker/PlacePickerFragment$1;->this$0:Lpicker/PlacePickerFragment;

    sget v3, Lplugin/facebook/v4a/R$string;->picker_placepicker_subtitle_catetory_only_format:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lpicker/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
