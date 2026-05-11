.class Lpicker/GraphObjectAdapter$2;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/GraphObjectAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$profileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpicker/GraphObjectAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lpicker/GraphObjectAdapter$2;->this$0:Lpicker/GraphObjectAdapter;

    iput-object p2, p0, Lpicker/GraphObjectAdapter$2;->val$profileId:Ljava/lang/String;

    iput-object p3, p0, Lpicker/GraphObjectAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .locals 3

    .line 757
    iget-object v0, p0, Lpicker/GraphObjectAdapter$2;->this$0:Lpicker/GraphObjectAdapter;

    iget-object v1, p0, Lpicker/GraphObjectAdapter$2;->val$profileId:Ljava/lang/String;

    iget-object v2, p0, Lpicker/GraphObjectAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lpicker/GraphObjectAdapter;->access$200(Lpicker/GraphObjectAdapter;Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
