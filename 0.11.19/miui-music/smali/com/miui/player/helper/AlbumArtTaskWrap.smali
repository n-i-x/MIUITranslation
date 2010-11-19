.class public Lcom/miui/player/helper/AlbumArtTaskWrap;
.super Ljava/lang/Object;
.source "AlbumArtTaskWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;,
        Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;,
        Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;,
        Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;
    }
.end annotation


# static fields
.field public static final ALBUM_ART_DOWNLOAD_FINISH:I = 0x2

.field public static final ALBUM_ART_DOWNLOAD_START:I = 0x1


# instance fields
.field private mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

.field private mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

.field private final mContext:Landroid/content/Context;

.field private mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

.field private final mURLPattern:Ljava/lang/String;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "albumArtTaskListener"
    .parameter "urlPattern"
    .parameter "unknownAlbum"
    .parameter "unknownArtist"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    .line 38
    iput-object p3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mURLPattern:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mUnknownAlbum:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mUnknownArtist:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/AlbumArtTaskWrap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/AlbumArtTaskWrap;->needDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/AlbumArtTaskWrap;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mURLPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;)Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    return-object p1
.end method

.method private needDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "album"
    .parameter "artist"

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mUnknownAlbum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mUnknownArtist:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public batchCancel()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->cancel(Z)Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    .line 98
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->cancel(Z)Z

    .line 91
    :cond_0
    return-void
.end method

.method public execute(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 2
    .parameter "albumInfo"

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 48
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->isRequestingAlbum(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->cancel(Z)Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;-><init>(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V

    iput-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    .line 56
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mTask:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public execute(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;-><init>(Lcom/miui/player/helper/AlbumArtTaskWrap;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    .line 71
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getAlbumArtTaskListener()Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    return-object v0
.end method

.method public isBatchDownLoad()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
