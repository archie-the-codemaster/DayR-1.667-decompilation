.class public final Lcom/google/android/gms/internal/measurement/zzix;
.super Ljava/lang/Object;


# static fields
.field private static final zzakh:[I

.field private static final zzaox:I = 0xb

.field private static final zzaoy:I = 0xc

.field private static final zzaoz:I = 0x10

.field private static final zzapa:I = 0x1a

.field private static final zzapb:[J

.field private static final zzapc:[F

.field private static final zzapd:[D

.field private static final zzape:[Z

.field private static final zzapf:[Ljava/lang/String;

.field private static final zzapg:[[B

.field public static final zzaph:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 17
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzakh:[I

    new-array v1, v0, [J

    .line 18
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzapb:[J

    new-array v1, v0, [F

    .line 19
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzapc:[F

    new-array v1, v0, [D

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzapd:[D

    new-array v1, v0, [Z

    .line 21
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzape:[Z

    new-array v1, v0, [Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzapf:[Ljava/lang/String;

    new-array v1, v0, [[B

    .line 23
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix;->zzapg:[[B

    new-array v0, v0, [B

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzix;->zzaph:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzil;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzil;->getPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzil;->zzau(I)Z

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzil;->zzsg()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzil;->zzau(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzil;->zzu(II)V

    return v1
.end method
