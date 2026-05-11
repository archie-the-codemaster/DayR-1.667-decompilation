.class Lcom/ansca/corona/graphics/FontServices$1;
.super Ljava/lang/Object;
.source "FontServices.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/graphics/FontServices;->fetchAllSystemFontNames()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/graphics/FontServices;


# direct methods
.method constructor <init>(Lcom/ansca/corona/graphics/FontServices;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/ansca/corona/graphics/FontServices$1;->this$0:Lcom/ansca/corona/graphics/FontServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".ttf"

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
