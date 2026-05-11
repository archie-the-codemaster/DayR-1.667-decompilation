.class Lpicker/PlacePickerFragment$2;
.super Ljava/util/TimerTask;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/PlacePickerFragment;


# direct methods
.method constructor <init>(Lpicker/PlacePickerFragment;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lpicker/PlacePickerFragment$2;->this$0:Lpicker/PlacePickerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 432
    iget-object v0, p0, Lpicker/PlacePickerFragment$2;->this$0:Lpicker/PlacePickerFragment;

    invoke-static {v0}, Lpicker/PlacePickerFragment;->access$200(Lpicker/PlacePickerFragment;)V

    return-void
.end method
