.class public Lcom/miui/player/helper/MusicMetaManager;
.super Ljava/lang/Object;
.source "MusicMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;,
        Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    }
.end annotation


# static fields
.field public static final META_TYPE_ALBUM:Ljava/lang/String; = "album"

.field public static final META_TYPE_LYRIC:Ljava/lang/String; = "lyric"

.field private static final META_TYPE_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/helper/MusicMetaManager$MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final META_TYPE_THUMB:Ljava/lang/String; = "thumb"

.field public static final MUSIC_DIR:Ljava/lang/String; = "miui_music"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-string v8, "thumb"

    const-string v7, "lyric"

    const-string v6, "album"

    const-string v5, ".jpg"

    const-string v4, "miui_music"

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    .line 54
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "lyric"

    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miui_music"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lyric"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".lrc"

    invoke-direct {v1, v2, v3}, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "album"

    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miui_music"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-direct {v1, v2, v5}, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "thumb"

    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miui_music"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "thumb"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-direct {v1, v2, v5}, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/miui/player/helper/MusicMetaManager;->initializeEnvironment()V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static deleteRelateFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 252
    const-string v2, "lyric"

    invoke-static {p0, p2, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 253
    .local v1, lyricFile:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 257
    :cond_0
    const-string v2, "album"

    invoke-static {p1, p2, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 262
    :cond_1
    return-void
.end method

.method public static downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "urlPattern"
    .parameter "album"
    .parameter "artist"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v10

    .line 248
    :goto_0
    return-object v8

    .line 205
    :cond_0
    const/4 v1, 0x0

    .line 206
    .local v1, bm:Landroid/graphics/Bitmap;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, url:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lcom/miui/player/helper/NetworkUtils;->getJSONObjectFromURL(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 210
    .local v5, json:Lorg/json/JSONObject;
    if-nez v5, :cond_1

    move-object v8, v10

    .line 211
    goto :goto_0

    .line 214
    :cond_1
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 215
    .local v2, data:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v8, v12, :cond_2

    move-object v8, v10

    .line 216
    goto :goto_0

    .line 219
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, albumUrl:Ljava/lang/String;
    if-nez v0, :cond_3

    move-object v8, v10

    .line 221
    goto :goto_0

    .line 225
    :cond_3
    invoke-static {v0}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetSync(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 226
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_4

    move-object v8, v10

    .line 227
    goto :goto_0

    .line 230
    :cond_4
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 233
    const-string v8, "album"

    invoke-static {p1, p2, v8}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, path:Ljava/lang/String;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v0           #albumUrl:Ljava/lang/String;
    .end local v2           #data:Lorg/json/JSONArray;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #path:Ljava/lang/String;
    :goto_1
    move-object v8, v1

    .line 248
    goto :goto_0

    .line 236
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 237
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 239
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 241
    .local v3, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v8

    move-object v3, v8

    .line 243
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v3           #e:Lorg/json/JSONException;
    :catch_4
    move-exception v8

    move-object v3, v8

    .line 245
    .local v3, e:Ljava/net/URISyntaxException;
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method public static downloadLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "context"
    .parameter "title"
    .parameter "artist"
    .parameter "runnable"

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "download_album_auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :cond_2
    const v2, 0x7f07007e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, defaultPattern:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, url:Ljava/lang/String;
    invoke-static {v1, p1, p2, p3}, Lcom/miui/player/helper/MusicMetaManager;->downloadLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static downloadLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "url"
    .parameter "title"
    .parameter "artist"
    .parameter "runnable"

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v1, "lyric"

    invoke-static {p1, p2, v1}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, path:Ljava/lang/String;
    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;

    invoke-direct {v1, v0}, Lcom/miui/player/helper/MusicMetaManager$LyricDownloadRunnable;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p3}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static getDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dir"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/miui/player/helper/Global;->getPathRelateToRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "title"
    .parameter "artist"
    .parameter "metaType"

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 138
    :goto_0
    return-object v2

    .line 131
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 135
    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 138
    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "artist"
    .parameter "metaType"

    .prologue
    .line 88
    sget-object v3, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 89
    .local v2, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    if-nez v2, :cond_0

    .line 90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileName bad arg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "name and artist are both empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_1
    iget-object v3, v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/player/helper/MusicMetaManager;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, dir:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 100
    const-string p1, ""

    .line 103
    :cond_2
    if-nez p0, :cond_3

    .line 104
    const-string p0, ""

    .line 107
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/miui/player/helper/MusicMetaManager;->regularFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static initializeEnvironment()V
    .locals 6

    .prologue
    .line 67
    sget-object v5, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 68
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 71
    .local v3, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    iget-object v5, v3, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/player/helper/MusicMetaManager;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 77
    .end local v0           #dir:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaInfo;>;"
    .end local v2           #file:Ljava/io/File;
    .end local v3           #info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    :cond_1
    return-void
.end method

.method private static regularFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 114
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
