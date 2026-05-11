.class final enum Lcom/ansca/corona/Controller$RuntimeState;
.super Ljava/lang/Enum;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RuntimeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ansca/corona/Controller$RuntimeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Running:Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Starting:Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Stopped:Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Stopping:Lcom/ansca/corona/Controller$RuntimeState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 126
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const/4 v1, 0x0

    const-string v2, "Starting"

    invoke-direct {v0, v2, v1}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    .line 127
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const/4 v2, 0x1

    const-string v3, "Running"

    invoke-direct {v0, v3, v2}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    .line 128
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const/4 v3, 0x2

    const-string v4, "Stopping"

    invoke-direct {v0, v4, v3}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    .line 129
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const/4 v4, 0x3

    const-string v5, "Stopped"

    invoke-direct {v0, v5, v4}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ansca/corona/Controller$RuntimeState;

    .line 125
    sget-object v5, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->$VALUES:[Lcom/ansca/corona/Controller$RuntimeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/Controller$RuntimeState;
    .locals 1

    .line 125
    const-class v0, Lcom/ansca/corona/Controller$RuntimeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/Controller$RuntimeState;

    return-object p0
.end method

.method public static values()[Lcom/ansca/corona/Controller$RuntimeState;
    .locals 1

    .line 125
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->$VALUES:[Lcom/ansca/corona/Controller$RuntimeState;

    invoke-virtual {v0}, [Lcom/ansca/corona/Controller$RuntimeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/Controller$RuntimeState;

    return-object v0
.end method
