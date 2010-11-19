.class public Lcom/miui/player/helper/AlbumViewController;
.super Ljava/lang/Object;
.source "AlbumViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;
    }
.end annotation


# instance fields
.field private mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

.field private mContext:Landroid/content/Context;

.field private mCurrentAlbumFrame:Landroid/view/View;

.field private mCurrentAlbumImage:Landroid/widget/ImageView;

.field private mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "urlPattern"
    .parameter "unknownAlbumName"
    .parameter "unkownArtistName"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/player/helper/AlbumViewController;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap;

    new-instance v2, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;

    invoke-direct {v2, p0}, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;-><init>(Lcom/miui/player/helper/AlbumViewController;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/helper/AlbumArtTaskWrap;-><init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/AlbumViewController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/AlbumViewController;->isPlayingAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/AlbumViewController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/AlbumViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/player/helper/AlbumViewController;->setDefaultAlbum()V

    return-void
.end method

.method private isPlayingAlbum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "album"
    .parameter "artist"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 125
    :goto_0
    return v2

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v0, v2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    .line 120
    .local v0, currentAlbumName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v1, v2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    .line 122
    .local v1, currentArtistName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/player/helper/MediaFile;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private setDefaultAlbum()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumImage:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public enableSpectrumVisualizer(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/ui/SpectrumVisualizer;

    check-cast p0, Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-virtual {p0, p1}, Lcom/miui/player/ui/SpectrumVisualizer;->enableUpdate(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "parent"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumImage:Landroid/widget/ImageView;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-wide v2, v2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->songid:J

    iget-object v4, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-wide v4, v4, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumid:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/player/helper/AlbumManager;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v1, v1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v2, v2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/player/helper/AlbumManager;->getXShareArtwork(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    :cond_1
    if-nez v0, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/miui/player/helper/AlbumViewController;->setDefaultAlbum()V

    .line 65
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    iget-object v2, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/AlbumArtTaskWrap;->execute(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V

    .line 72
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    return-object v1

    .line 67
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setAlbumInfo(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 1
    .parameter "currentInfo"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/helper/AlbumViewController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    return-void
.end method

.method public setSpectrumVisualizerVisible(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mCurrentAlbumFrame:Landroid/view/View;

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public shutdowon()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap;->cancel()V

    .line 77
    return-void
.end method
