.class public Lcom/ansca/corona/maps/MapAddressRequestFailedTask;
.super Ljava/lang/Object;
.source "MapAddressRequestFailedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ansca/corona/maps/MapAddressRequestFailedTask;->fErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ansca/corona/maps/MapAddressRequestFailedTask;->fErrorMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ansca/corona/JavaToNativeShim;->mapAddressRequestFailedEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V

    return-void
.end method
