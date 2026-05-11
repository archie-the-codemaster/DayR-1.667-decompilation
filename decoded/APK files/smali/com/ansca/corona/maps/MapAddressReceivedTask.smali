.class public Lcom/ansca/corona/maps/MapAddressReceivedTask;
.super Ljava/lang/Object;
.source "MapAddressReceivedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fCity:Ljava/lang/String;

.field private fCityDetails:Ljava/lang/String;

.field private fCountry:Ljava/lang/String;

.field private fCountryCode:Ljava/lang/String;

.field private fPostalCode:Ljava/lang/String;

.field private fRegion:Ljava/lang/String;

.field private fRegionDetails:Ljava/lang/String;

.field private fStreet:Ljava/lang/String;

.field private fStreetDetails:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fStreet:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fStreetDetails:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCity:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCityDetails:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fRegion:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fRegionDetails:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fPostalCode:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCountry:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCountryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 10

    .line 42
    iget-object v1, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fStreet:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fStreetDetails:Ljava/lang/String;

    iget-object v3, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCity:Ljava/lang/String;

    iget-object v4, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCityDetails:Ljava/lang/String;

    iget-object v5, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fRegion:Ljava/lang/String;

    iget-object v6, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fRegionDetails:Ljava/lang/String;

    iget-object v7, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fPostalCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCountry:Ljava/lang/String;

    iget-object v9, p0, Lcom/ansca/corona/maps/MapAddressReceivedTask;->fCountryCode:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/ansca/corona/JavaToNativeShim;->mapAddressReceivedEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
