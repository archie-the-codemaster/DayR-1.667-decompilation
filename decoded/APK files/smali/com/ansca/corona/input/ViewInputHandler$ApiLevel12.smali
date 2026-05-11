.class Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12;
.super Ljava/lang/Object;
.source "ViewInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/ViewInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel12"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventHandlerWith(Lcom/ansca/corona/input/ViewInputHandler;)Lcom/ansca/corona/input/ViewInputHandler$EventHandler;
    .locals 1

    .line 183
    new-instance v0, Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;

    invoke-direct {v0, p0}, Lcom/ansca/corona/input/ViewInputHandler$ApiLevel12$EventHandler;-><init>(Lcom/ansca/corona/input/ViewInputHandler;)V

    return-object v0
.end method
