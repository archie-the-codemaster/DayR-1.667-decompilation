.class synthetic Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;
.super Ljava/lang/Object;
.source "StoreTransactionRuntimeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/google/iap/v3/StoreTransactionRuntimeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lplugin/google/iap/v3/util/Purchase$State;->values()[Lplugin/google/iap/v3/util/Purchase$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;->$SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I

    :try_start_0
    sget-object v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;->$SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Purchased:Lplugin/google/iap/v3/util/Purchase$State;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;->$SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Cancelled:Lplugin/google/iap/v3/util/Purchase$State;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;->$SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Refunded:Lplugin/google/iap/v3/util/Purchase$State;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;->$SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Consumed:Lplugin/google/iap/v3/util/Purchase$State;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
