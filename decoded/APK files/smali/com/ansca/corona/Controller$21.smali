.class synthetic Lcom/ansca/corona/Controller$21;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ansca$corona$permissions$PermissionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 754
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionState;->values()[Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ansca/corona/Controller$21;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    :try_start_0
    sget-object v0, Lcom/ansca/corona/Controller$21;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ansca/corona/Controller$21;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
