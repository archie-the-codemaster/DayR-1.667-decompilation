.class public Lcom/ansca/corona/maps/MapMarker;
.super Ljava/lang/Object;
.source "MapMarker.java"


# instance fields
.field fImageFile:Ljava/lang/String;

.field fLatitude:D

.field fListener:I

.field fLongitude:D

.field fMarkerId:I

.field fSubtitle:Ljava/lang/String;

.field fTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/ansca/corona/maps/MapMarker;->fMarkerId:I

    .line 25
    iput v0, p0, Lcom/ansca/corona/maps/MapMarker;->fListener:I

    .line 26
    iput-wide p1, p0, Lcom/ansca/corona/maps/MapMarker;->fLatitude:D

    .line 27
    iput-wide p3, p0, Lcom/ansca/corona/maps/MapMarker;->fLongitude:D

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarker;->fSubtitle:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarker;->fTitle:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarker;->fImageFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IDDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/ansca/corona/maps/MapMarker;->fMarkerId:I

    .line 35
    iput p8, p0, Lcom/ansca/corona/maps/MapMarker;->fListener:I

    .line 36
    iput-wide p2, p0, Lcom/ansca/corona/maps/MapMarker;->fLatitude:D

    .line 37
    iput-wide p4, p0, Lcom/ansca/corona/maps/MapMarker;->fLongitude:D

    .line 38
    iput-object p6, p0, Lcom/ansca/corona/maps/MapMarker;->fTitle:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/ansca/corona/maps/MapMarker;->fSubtitle:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/ansca/corona/maps/MapMarker;->fImageFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteRef(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 100
    iget v0, p0, Lcom/ansca/corona/maps/MapMarker;->fListener:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/ansca/corona/maps/MapMarker;->fListener:I

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getImageFile()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarker;->fImageFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/ansca/corona/maps/MapMarker;->fLatitude:D

    return-wide v0
.end method

.method public getListener()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/ansca/corona/maps/MapMarker;->fListener:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/ansca/corona/maps/MapMarker;->fLongitude:D

    return-wide v0
.end method

.method public getMarkerId()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/ansca/corona/maps/MapMarker;->fMarkerId:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarker;->fSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ansca/corona/maps/MapMarker;->fTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setImageFile(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarker;->fImageFile:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/ansca/corona/maps/MapMarker;->fLatitude:D

    return-void
.end method

.method public setListener(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/ansca/corona/maps/MapMarker;->fListener:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/ansca/corona/maps/MapMarker;->fLongitude:D

    return-void
.end method

.method public setMarkerId(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/ansca/corona/maps/MapMarker;->fMarkerId:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarker;->fSubtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ansca/corona/maps/MapMarker;->fTitle:Ljava/lang/String;

    return-void
.end method
