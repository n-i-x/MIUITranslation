.class public Lcom/miui/player/helper/AlbumManager;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;,
        Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;,
        Lcom/miui/player/helper/AlbumManager$BitmapDecoder;,
        Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 59
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 61
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 71
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const/4 v7, 0x0

    .line 259
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    move-object v5, v7

    .line 291
    :goto_0
    return-object v5

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 265
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 266
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 267
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 271
    const/4 v5, 0x0

    sget-object v6, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    if-eqz v2, :cond_1

    .line 284
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2           #in:Ljava/io/InputStream;
    :cond_1
    :goto_1
    move-object v5, v0

    .line 291
    goto :goto_0

    .line 272
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 276
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/helper/AlbumManager;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_2

    .line 278
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 283
    :cond_2
    if-eqz v2, :cond_1

    .line 284
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 286
    :catch_1
    move-exception v5

    goto :goto_1

    .line 282
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 283
    if-eqz v2, :cond_3

    .line 284
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 287
    :cond_3
    :goto_2
    throw v5

    .line 286
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v5, 0x0

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, bm:Landroid/graphics/Bitmap;
    cmp-long v4, p3, v5

    if-gez v4, :cond_0

    cmp-long v4, p1, v5

    if-gez v4, :cond_0

    .line 298
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must specify an album or a song id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_0
    cmp-long v4, p3, v5

    if-ltz v4, :cond_1

    .line 303
    :try_start_0
    sget-object v4, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v4, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 304
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 306
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 308
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v0

    .line 311
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 187
    .local v2, res:Landroid/content/ContentResolver;
    sget-object v4, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 188
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 192
    new-instance v0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 195
    .local v0, decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    invoke-static {v0, p3, p4}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 199
    if-eqz v1, :cond_0

    .line 200
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v4

    .line 196
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v4

    .line 199
    if-eqz v1, :cond_1

    .line 200
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 198
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    .line 199
    if-eqz v1, :cond_2

    .line 200
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 203
    :cond_2
    :goto_2
    throw v4

    .line 202
    .restart local v0       #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static getCachedArtwork(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "artIndex"
    .parameter "album"
    .parameter "artist"
    .parameter "w"
    .parameter "h"
    .parameter "fromFile"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 80
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_1

    .line 81
    invoke-static {p3, p4, p5, p6}, Lcom/miui/player/helper/AlbumManager;->getXShareArtworkQuick(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1

    .line 83
    :cond_1
    invoke-static {p0, p1, p2, p5, p6}, Lcom/miui/player/helper/AlbumManager;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "decoder"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v7, 0x1

    .line 136
    const/4 v3, 0x1

    .line 140
    .local v3, sampleSize:I
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {p0, v5}, Lcom/miui/player/helper/AlbumManager$BitmapDecoder;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v2, v5, 0x1

    .line 143
    .local v2, nextWidth:I
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v1, v5, 0x1

    .line 144
    .local v1, nextHeight:I
    :goto_0
    if-le v2, p1, :cond_0

    if-le v1, p2, :cond_0

    .line 145
    shl-int/lit8 v3, v3, 0x1

    .line 146
    shr-int/lit8 v2, v2, 0x1

    .line 147
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 151
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {p0, v5}, Lcom/miui/player/helper/AlbumManager$BitmapDecoder;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 156
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v5, p1, :cond_1

    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v5, p2, :cond_3

    .line 157
    :cond_1
    invoke-static {v0, p1, p2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 160
    .local v4, tmp:Landroid/graphics/Bitmap;
    if-eq v4, v0, :cond_2

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_2
    move-object v0, v4

    .line 166
    .end local v4           #tmp:Landroid/graphics/Bitmap;
    :cond_3
    return-object v0
.end method

.method public static getCompressDrawable(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "decoder"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 129
    new-instance v1, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getXShareArtwork(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 250
    :goto_0
    return-object v1

    .line 247
    :cond_0
    const-string v1, "album"

    invoke-static {p0, p1, v1}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, filePath:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static getXShareArtworkQuick(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "album"
    .parameter "artist"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 170
    const-string v2, "album"

    invoke-static {p0, p1, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 171
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, decoder:Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;
    invoke-static {v0, p2, p3}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isArtworkQuickExist(Landroid/content/Context;J)Z
    .locals 8
    .parameter "context"
    .parameter "album_id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 212
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 213
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 217
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 218
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 219
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 220
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 222
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_1

    .line 229
    if-eqz v0, :cond_0

    .line 230
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move v3, v7

    .line 236
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    return v3

    .line 229
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    if-eqz v0, :cond_2

    .line 230
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_2
    move v3, v6

    .line 236
    goto :goto_1

    .line 226
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 229
    if-eqz v0, :cond_2

    .line 230
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 232
    :catch_1
    move-exception v3

    goto :goto_2

    .line 228
    :catchall_0
    move-exception v3

    .line 229
    if-eqz v0, :cond_3

    .line 230
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 233
    :cond_3
    :goto_3
    throw v3

    .line 232
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_3
.end method
