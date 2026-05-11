.class final enum Lcom/ansca/corona/events/MediaEvent$Event;
.super Ljava/lang/Enum;
.source "MediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/events/MediaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ansca/corona/events/MediaEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum LoadSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 22
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v1, 0x0

    const-string v2, "LoadSound"

    invoke-direct {v0, v2, v1}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->LoadSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 23
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v2, 0x1

    const-string v3, "PlaySound"

    invoke-direct {v0, v3, v2}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 24
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v3, 0x2

    const-string v4, "StopSound"

    invoke-direct {v0, v4, v3}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 25
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v4, 0x3

    const-string v5, "PauseSound"

    invoke-direct {v0, v5, v4}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 26
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v5, 0x4

    const-string v6, "ResumeSound"

    invoke-direct {v0, v6, v5}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 27
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v6, 0x5

    const-string v7, "PlayVideo"

    invoke-direct {v0, v7, v6}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 28
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v7, 0x6

    const-string v8, "SoundEnded"

    invoke-direct {v0, v8, v7}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 29
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const/4 v8, 0x7

    const-string v9, "VideoEnded"

    invoke-direct {v0, v9, v8}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ansca/corona/events/MediaEvent$Event;

    .line 21
    sget-object v9, Lcom/ansca/corona/events/MediaEvent$Event;->LoadSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v9, v0, v1

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->$VALUES:[Lcom/ansca/corona/events/MediaEvent$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/events/MediaEvent$Event;
    .locals 1

    .line 21
    const-class v0, Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/events/MediaEvent$Event;

    return-object p0
.end method

.method public static values()[Lcom/ansca/corona/events/MediaEvent$Event;
    .locals 1

    .line 21
    sget-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->$VALUES:[Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-virtual {v0}, [Lcom/ansca/corona/events/MediaEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/events/MediaEvent$Event;

    return-object v0
.end method
