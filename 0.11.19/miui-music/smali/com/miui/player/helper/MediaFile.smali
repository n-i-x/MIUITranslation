.class public Lcom/miui/player/helper/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_FLAC:I = 0x9

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x9

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x23

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1a

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/helper/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnknownAlbumName:Ljava/lang/CharSequence;

.field private static sUnknownArtistName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x18

    const/16 v8, 0x17

    const/4 v7, 0x7

    const/16 v5, 0xb

    const-string v6, "audio/midi"

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/miui/player/helper/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/miui/player/helper/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 142
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    const-string v2, "OGG"

    const-string v3, "application/ogg"

    invoke-static {v2, v7, v3}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const-string v2, "OGA"

    const-string v3, "application/ogg"

    invoke-static {v2, v7, v3}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    const-string v2, "FLAC"

    const/16 v3, 0x9

    const-string v4, "audio/flac"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    const-string v2, "SMF"

    const/16 v3, 0xc

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const-string v2, "IMY"

    const/16 v3, 0xd

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const-string v2, "MP4"

    const/16 v3, 0x15

    const-string v4, "video/mp4"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string v4, "video/mp4"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string v2, "3GP"

    const-string v3, "video/3gpp"

    invoke-static {v2, v8, v3}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v2, "3GPP"

    const-string v3, "video/3gpp"

    invoke-static {v2, v8, v3}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    const-string v2, "3G2"

    const-string v3, "video/3gpp2"

    invoke-static {v2, v9, v3}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    const-string v2, "3GPP2"

    const-string v3, "video/3gpp2"

    invoke-static {v2, v9, v3}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    const-string v2, "JPG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string v2, "JPEG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    const-string v2, "GIF"

    const/16 v3, 0x20

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    const-string v2, "PNG"

    const/16 v3, 0x21

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    const-string v2, "WBMP"

    const/16 v3, 0x23

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/miui/player/helper/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 185
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/player/helper/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 222
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/player/helper/MediaFile;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 224
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/player/helper/MediaFile;->sUnknownArtistName:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 137
    sget-object v0, Lcom/miui/player/helper/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/player/helper/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/miui/player/helper/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/miui/player/helper/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public static correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "file"
    .parameter "title"
    .parameter "artist"
    .parameter "album"

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, ret:Z
    invoke-static {p1, p2, p3, p4}, Lcom/miui/player/helper/MediaFile;->doCorrect(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-static {p1}, Lcom/miui/player/helper/SimpleMediaScanner;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 261
    const/4 v1, 0x0

    .line 269
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 264
    .restart local v0       #mimeType:Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/miui/player/helper/SimpleMediaScanner;->gotoScan(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doCorrect(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "file"
    .parameter "title"
    .parameter "artist"
    .parameter "album"

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v5

    .line 320
    :goto_0
    return v4

    .line 277
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v5

    .line 278
    goto :goto_0

    .line 281
    :cond_3
    const/4 v2, 0x0

    .line 284
    .local v2, isModified:Z
    :try_start_0
    invoke-static {p0}, Lentagged/audioformats/AudioFileIO;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    .line 285
    .local v0, audio:Lentagged/audioformats/AudioFile;
    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v3

    .line 286
    .local v3, t:Lentagged/audioformats/Tag;
    invoke-interface {v3}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 287
    invoke-interface {v3, p1}, Lentagged/audioformats/Tag;->setTitle(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x1

    .line 291
    :cond_4
    invoke-interface {v3}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 292
    invoke-interface {v3, p2}, Lentagged/audioformats/Tag;->setArtist(Ljava/lang/String;)V

    .line 293
    const/4 v2, 0x1

    .line 296
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 297
    invoke-interface {v3, p3}, Lentagged/audioformats/Tag;->setAlbum(Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x1

    .line 301
    :cond_6
    if-eqz v2, :cond_7

    .line 302
    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->commit()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lentagged/audioformats/exceptions/CannotWriteException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #audio:Lentagged/audioformats/AudioFile;
    .end local v3           #t:Lentagged/audioformats/Tag;
    :cond_7
    :goto_1
    move v4, v2

    .line 320
    goto :goto_0

    .line 307
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 308
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 309
    const/4 v2, 0x0

    .line 311
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 312
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 313
    .local v1, e:Lentagged/audioformats/exceptions/CannotReadException;
    invoke-virtual {v1}, Lentagged/audioformats/exceptions/CannotReadException;->printStackTrace()V

    .line 314
    const/4 v2, 0x0

    .line 318
    goto :goto_1

    .line 315
    .end local v1           #e:Lentagged/audioformats/exceptions/CannotReadException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 316
    .local v1, e:Lentagged/audioformats/exceptions/CannotWriteException;
    invoke-virtual {v1}, Lentagged/audioformats/exceptions/CannotWriteException;->printStackTrace()V

    .line 317
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/miui/player/helper/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 211
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 214
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    sget-object v1, Lcom/miui/player/helper/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/MediaFile$MediaFileType;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 218
    sget-object v1, Lcom/miui/player/helper/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 219
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 227
    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    sget-object v0, Lcom/miui/player/helper/MediaFile;->sUnknownAlbumName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 229
    sget-object p1, Lcom/miui/player/helper/MediaFile;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 237
    :cond_1
    :goto_0
    return-object p1

    .line 231
    :cond_2
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/MediaFile;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 232
    sget-object p1, Lcom/miui/player/helper/MediaFile;->sUnknownAlbumName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    sget-object v0, Lcom/miui/player/helper/MediaFile;->sUnknownArtistName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 243
    sget-object p1, Lcom/miui/player/helper/MediaFile;->sUnknownArtistName:Ljava/lang/CharSequence;

    .line 250
    :cond_1
    :goto_0
    return-object p1

    .line 245
    :cond_2
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/MediaFile;->sUnknownArtistName:Ljava/lang/CharSequence;

    .line 246
    sget-object p1, Lcom/miui/player/helper/MediaFile;->sUnknownArtistName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v1, 0x1

    .line 195
    if-lt p0, v1, :cond_0

    const/16 v0, 0x9

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xb

    if-lt p0, v0, :cond_2

    const/16 v0, 0xd

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 203
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x23

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 207
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 199
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
