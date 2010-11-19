.class Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;
.super Landroid/os/AsyncTask;
.source "AlbumArtTaskWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumArtTaskWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

.field final synthetic this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 0
    .parameter
    .parameter "albumInfo"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 104
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    .line 106
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 115
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-wide v2, v9, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumid:J

    .line 116
    .local v2, albumid:J
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-wide v7, v9, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->songid:J

    .line 118
    .local v7, songid:J
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v9}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7, v8, v2, v3}, Lcom/miui/player/helper/AlbumManager;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 120
    .local v5, bm:Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 121
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v1, v9, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    .line 122
    .local v1, albumName:Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v4, v9, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    .line 123
    .local v4, artistName:Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v9, v1, v4}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$100(Lcom/miui/player/helper/AlbumArtTaskWrap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 124
    invoke-static {v1, v4}, Lcom/miui/player/helper/AlbumManager;->getXShareArtwork(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 125
    new-array v9, v10, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v9}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->publishProgress([Ljava/lang/Object;)V

    .line 126
    if-nez v5, :cond_1

    .line 127
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v9}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v9}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "download_album_auto"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x3

    .line 132
    .local v0, RETRY:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v9, 0x3

    if-ge v6, v9, :cond_1

    .line 133
    iget-object v9, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v9}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$200(Lcom/miui/player/helper/AlbumArtTaskWrap;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1, v4}, Lcom/miui/player/helper/MusicMetaManager;->downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 135
    if-eqz v5, :cond_2

    .line 144
    .end local v0           #RETRY:I
    .end local v1           #albumName:Ljava/lang/String;
    .end local v4           #artistName:Ljava/lang/String;
    .end local v6           #i:I
    :cond_1
    return-object v5

    .line 132
    .restart local v0       #RETRY:I
    .restart local v1       #albumName:Ljava/lang/String;
    .restart local v4       #artistName:Ljava/lang/String;
    .restart local v6       #i:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isRequestingAlbum(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)Z
    .locals 2
    .parameter "albumInfo"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v0, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    iget-object v0, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$402(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;

    .line 160
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    invoke-interface {v0, p1, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;->downloadFinish(Landroid/graphics/Bitmap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "statusArr"

    .prologue
    .line 164
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    .local v1, status:I
    const/4 v0, 0x0

    .line 166
    .local v0, ret:Z
    iget-object v2, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v2}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v2}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->mAlbumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    invoke-interface {v2, v3, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;->downloadStart(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;I)Z

    move-result v0

    .line 169
    :cond_0
    if-nez v0, :cond_1

    .line 170
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->cancel(Z)Z

    .line 172
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
