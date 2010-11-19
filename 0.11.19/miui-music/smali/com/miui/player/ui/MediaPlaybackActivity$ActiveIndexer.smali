.class Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveIndexer"
.end annotation


# instance fields
.field private mCurrentActive:I

.field private mIndexerArr:[Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1545
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    invoke-static {}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3200()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    .line 1547
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 1548
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 1549
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0b0017

    invoke-virtual {p1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 1551
    iput v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mCurrentActive:I

    .line 1552
    return-void
.end method


# virtual methods
.method public active(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mCurrentActive:I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3300()[I

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mCurrentActive:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1558
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mIndexerArr:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-static {}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3200()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1559
    iput p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->mCurrentActive:I

    .line 1561
    :cond_0
    return-void
.end method
