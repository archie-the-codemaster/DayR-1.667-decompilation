.class public Lcom/ansca/corona/storage/ResourceServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "ResourceServices.java"


# static fields
.field public static final INVALID_RESOURCE_ID:I

.field private static sPackageName:Ljava/lang/String;

.field private static sRClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDrawableResourceId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/storage/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayoutResourceId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/storage/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/ansca/corona/storage/ResourceServices;->sPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 53
    sput-object v0, Lcom/ansca/corona/storage/ResourceServices;->sPackageName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/ansca/corona/storage/ResourceServices;->getRClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/storage/ResourceServices;->sPackageName:Ljava/lang/String;

    .line 64
    :cond_0
    sget-object v0, Lcom/ansca/corona/storage/ResourceServices;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRClass()Ljava/lang/Class;
    .locals 3

    const-string v0, ".R"

    .line 73
    sget-object v1, Lcom/ansca/corona/storage/ResourceServices;->sRClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ansca/corona/storage/ResourceServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/ansca/corona/storage/ResourceServices;->sRClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 83
    :goto_0
    sget-object v1, Lcom/ansca/corona/storage/ResourceServices;->sRClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 84
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/ansca/corona/CoronaEnvironment;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/storage/ResourceServices;->sRClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :catch_1
    :cond_0
    sget-object v0, Lcom/ansca/corona/storage/ResourceServices;->sRClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRawResourceId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "raw"

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/storage/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/storage/ResourceServices;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    .line 128
    :cond_2
    invoke-static {}, Lcom/ansca/corona/storage/ResourceServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    return v2

    :cond_3
    const-string v2, "com.ansca.corona"

    .line 133
    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 99
    invoke-static {}, Lcom/ansca/corona/storage/ResourceServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getStringResourceId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/storage/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
