.class Lcom/ansca/corona/input/KeyCode$ApiLevel12;
.super Ljava/lang/Object;
.source "KeyCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/KeyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel12"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSymbolicNameFromKeyCode(I)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
