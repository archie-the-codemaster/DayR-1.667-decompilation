.class Lpicker/PickerFragment$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lpicker/GraphObjectAdapter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PickerFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 125
    iput-object p1, p0, Lpicker/PickerFragment$1;->this$0:Lpicker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includeItem(Lorg/json/JSONObject;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lpicker/PickerFragment$1;->this$0:Lpicker/PickerFragment;

    invoke-virtual {v0, p1}, Lpicker/PickerFragment;->filterIncludesItem(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method
