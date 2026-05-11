.class public Lcom/ansca/corona/maps/MapRequestLocationFailedTask;
.super Ljava/lang/Object;
.source "MapRequestLocationFailedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fErrorMessage:Ljava/lang/String;

.field private fListener:I

.field private fOriginalRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;->fErrorMessage:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;->fListener:I

    .line 21
    iput-object p3, p0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;->fOriginalRequest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 26
    iget v0, p0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;->fListener:I

    iget-object v1, p0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;->fErrorMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/maps/MapRequestLocationFailedTask;->fOriginalRequest:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->mapRequestLocationFailed(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
