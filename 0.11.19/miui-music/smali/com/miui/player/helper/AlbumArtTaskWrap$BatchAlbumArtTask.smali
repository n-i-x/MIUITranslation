.class Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;
.super Landroid/os/AsyncTask;
.source "AlbumArtTaskWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumArtTaskWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatchAlbumArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlbumInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/AlbumArtTaskWrap;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
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
    .line 178
    .local p2, albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 179
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->mAlbumInfos:Ljava/util/ArrayList;

    .line 181
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    iget-object v5, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->mAlbumInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    .line 186
    .local v0, albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    invoke-virtual {p0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 206
    .end local v0           #albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    :goto_1
    return-object v5

    .line 189
    .restart local v0       #albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    :cond_1
    iget-object v5, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v5}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumid:J

    invoke-static {v5, v6, v7}, Lcom/miui/player/helper/AlbumManager;->isArtworkQuickExist(Landroid/content/Context;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, bm:Landroid/graphics/Bitmap;
    iget-object v1, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    .line 194
    .local v1, albumName:Ljava/lang/String;
    iget-object v2, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    .line 195
    .local v2, artistName:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v5, v1, v2}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$100(Lcom/miui/player/helper/AlbumArtTaskWrap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v5}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$200(Lcom/miui/player/helper/AlbumArtTaskWrap;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 197
    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    new-array v5, v9, [Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    .end local v0           #albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v3           #bm:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$502(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;)Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    .line 220
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "statusArr"

    .prologue
    .line 211
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, status:I
    iget-object v1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-static {v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$300(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;->downloadStart(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;I)Z

    .line 215
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
