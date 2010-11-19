.class public Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;
.super Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;
.source "MusicMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/MusicMetaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricDownloadRunnable"
.end annotation


# instance fields
.field private final mLyricPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "lyricPath"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;->mLyricPath:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 176
    iget-object v4, p0, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;->inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_0

    .line 197
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;->mLyricPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 184
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 185
    .local v1, count:I
    :goto_1
    iget-object v4, p0, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 194
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v1       #count:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 190
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 191
    iget-object v4, p0, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
