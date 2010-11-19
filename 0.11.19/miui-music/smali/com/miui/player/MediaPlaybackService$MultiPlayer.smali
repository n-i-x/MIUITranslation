.class Lcom/miui/player/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1800
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1888
    new-instance v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1902
    new-instance v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1908
    new-instance v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;-><init>(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1807
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1808
    return-void
.end method

.method static synthetic access$2000(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/miui/player/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1799
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/player/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1860
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1882
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1877
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1878
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1948
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 1834
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1835
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1836
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1841
    :goto_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1842
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1853
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1854
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1856
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1857
    :goto_1
    return-void

    .line 1839
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1843
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1845
    .local v0, ex:Ljava/io/IOException;
    invoke-static {}, Lcom/miui/player/MediaPlaybackService;->access$1908()I

    .line 1846
    iput-boolean v4, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_1

    .line 1848
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1850
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v4, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_1
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 1812
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1813
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1814
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1815
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1816
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1826
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1827
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1829
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1830
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1819
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 1821
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1823
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 1886
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1953
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1865
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1870
    return-void
.end method
