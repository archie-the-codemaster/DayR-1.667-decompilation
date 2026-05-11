.class Lpicker/GraphObjectPagingLoader$1;
.super Ljava/lang/Object;
.source "GraphObjectPagingLoader.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/GraphObjectPagingLoader;->startLoading(Lcom/facebook/GraphRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/GraphObjectPagingLoader;


# direct methods
.method constructor <init>(Lpicker/GraphObjectPagingLoader;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lpicker/GraphObjectPagingLoader$1;->this$0:Lpicker/GraphObjectPagingLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader$1;->this$0:Lpicker/GraphObjectPagingLoader;

    invoke-static {v0, p1}, Lpicker/GraphObjectPagingLoader;->access$000(Lpicker/GraphObjectPagingLoader;Lcom/facebook/GraphResponse;)V

    return-void
.end method
