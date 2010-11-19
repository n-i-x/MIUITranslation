.class public Lcom/miui/player/helper/LyricViewController;
.super Ljava/lang/Object;
.source "LyricViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;,
        Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArtistName:Ljava/lang/String;

.field private mDuration:J

.field private mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

.field private mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

.field private mLyricViewWrap:Landroid/view/View;

.field private mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/Gallery;)V
    .locals 2
    .parameter "activity"
    .parameter "gallery"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Lcom/miui/player/helper/LyricMovementController;

    new-instance v1, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;

    invoke-direct {v1, p0, p2}, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;-><init>(Lcom/miui/player/helper/LyricViewController;Landroid/widget/Gallery;)V

    invoke-direct {v0, v1}, Lcom/miui/player/helper/LyricMovementController;-><init>(Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;)V

    iput-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/LyricViewController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/LyricViewController;->isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/LyricViewController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/LyricViewController;)Lcom/miui/player/helper/LyricMovementController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/LyricViewController;)Lcom/miui/player/helper/LyricParser$Lyric;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/LyricViewController;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/helper/LyricViewController;->parseLyric(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 212
    :goto_0
    return v2

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController;->mTrackName:Ljava/lang/String;

    .line 208
    .local v1, currentTrackName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mArtistName:Ljava/lang/String;

    .line 210
    .local v0, currentArtistName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private parseLyric(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "trackName"
    .parameter "artistName"
    .parameter "allowDownload"

    .prologue
    const-wide/32 v6, 0xea60

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, isSelecting:Z
    const/4 v1, 0x0

    .line 91
    .local v1, isDownloading:Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 93
    const-string v4, "lyric"

    invoke-static {p1, p2, v4}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 95
    .local v3, lyricFile:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 99
    invoke-static {v3}, Lcom/miui/player/helper/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 100
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v4, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 140
    :cond_0
    const v0, 0xea60

    .line 142
    .local v0, MIX_DURATION:I
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 143
    iget-wide v4, p0, Lcom/miui/player/helper/LyricViewController;->mDuration:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 144
    const/4 v1, 0x1

    .line 145
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;

    invoke-direct {v5, p0, p1, p2}, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;-><init>(Lcom/miui/player/helper/LyricViewController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p1, p2, v5}, Lcom/miui/player/helper/MusicMetaManager;->downloadLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v4, :cond_2

    .line 151
    iget-wide v4, p0, Lcom/miui/player/helper/LyricViewController;->mDuration:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 152
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/miui/player/helper/LyricMovementController;->setText(Ljava/lang/String;)V

    .line 160
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/LyricViewController;->isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    iget-object v5, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v4, v5}, Lcom/miui/player/helper/LyricMovementController;->resetLyric(Lcom/miui/player/helper/LyricParser$Lyric;)V

    .line 164
    :cond_3
    return-void

    .line 153
    :cond_4
    if-nez v2, :cond_5

    if-eqz v1, :cond_6

    .line 154
    :cond_5
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    iget-object v5, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f070067

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/player/helper/LyricMovementController;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_6
    iget-object v4, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    iget-object v5, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f070068

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/player/helper/LyricMovementController;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public enableSpectrumVisualizer(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/ui/SpectrumVisualizer;

    check-cast p0, Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-virtual {p0, p1}, Lcom/miui/player/ui/SpectrumVisualizer;->enableUpdate(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const v4, 0x7f0b0022

    .line 43
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    .line 47
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, v:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/ExtendScrollView;

    invoke-virtual {v2, v1}, Lcom/miui/player/helper/LyricMovementController;->setScrollView(Lcom/miui/player/ui/ExtendScrollView;)V

    .line 52
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    return-object v1
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/LyricMovementController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/helper/LyricMovementController;->refreshLyric(J)V

    .line 57
    return-void
.end method

.method public setSpectrumVisualizerVisible(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public updateLyric(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "trackName"
    .parameter "artistName"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, filePath:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :cond_0
    const-string v2, "lyric"

    invoke-static {p1, p2, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->isModified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->save()Z

    .line 79
    .end local v0           #file:Ljava/io/File;
    :cond_3
    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 80
    :cond_4
    iput-object p1, p0, Lcom/miui/player/helper/LyricViewController;->mTrackName:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/miui/player/helper/LyricViewController;->mArtistName:Ljava/lang/String;

    .line 82
    iput-wide p3, p0, Lcom/miui/player/helper/LyricViewController;->mDuration:J

    .line 83
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/player/helper/LyricViewController;->parseLyric(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    :cond_5
    return-void
.end method
