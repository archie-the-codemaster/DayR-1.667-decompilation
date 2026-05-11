.class public final Lcom/google/android/gms/internal/ads/zzcjx;
.super Ljava/lang/Object;


# instance fields
.field private zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

.field private zzflu:Lcom/google/android/gms/internal/ads/zzcxm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzflu:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbrt;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

    return-void
.end method

.method public final zzakq()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzflu:Lcom/google/android/gms/internal/ads/zzcxm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V

    :cond_1
    return-void
.end method
