.class public Lcom/miui/player/helper/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/miui/player/helper/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 133
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return v2

    .line 133
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 136
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v5, 0x0

    .line 147
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v0, v4, [B

    .line 151
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_0

    .line 152
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v4

    .line 158
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v5

    .line 159
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 155
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static getFatVolumeId(Ljava/lang/String;)I
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public static native getFileStatus(Ljava/lang/String;Lcom/miui/player/helper/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 172
    sget-object v0, Lcom/miui/player/helper/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, ""

    .line 185
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v2, input:Ljava/io/InputStream;
    if-lez p1, :cond_3

    .line 188
    add-int/lit8 v8, p1, 0x1

    :try_start_0
    new-array v1, v8, [B

    .line 189
    .local v1, data:[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 190
    .local v5, length:I
    if-gtz v5, :cond_0

    .line 191
    const-string v8, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v8, v9

    .end local v5           #length:I
    :goto_0
    return-object v8

    .line 192
    .restart local v5       #length:I
    :cond_0
    if-gt v5, p1, :cond_1

    .line 193
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 194
    :cond_1
    if-nez p2, :cond_2

    .line 195
    :try_start_2
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 196
    :cond_2
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 197
    .end local v1           #data:[B
    .end local v5           #length:I
    :cond_3
    if-gez p1, :cond_c

    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, rolled:Z
    const/4 v3, 0x0

    .local v3, last:[B
    const/4 v1, 0x0

    .line 202
    .restart local v1       #data:[B
    :cond_4
    if-eqz v3, :cond_5

    .line 203
    const/4 v6, 0x1

    .line 204
    :cond_5
    move-object v7, v3

    .line 205
    .local v7, tmp:[B
    move-object v3, v1

    .line 206
    move-object v1, v7

    .line 207
    if-nez v1, :cond_6

    .line 208
    neg-int v8, p1

    :try_start_4
    new-array v1, v8, [B

    .line 209
    :cond_6
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 210
    .local v4, len:I
    array-length v8, v1

    if-eq v4, v8, :cond_4

    .line 212
    if-nez v3, :cond_7

    if-gtz v4, :cond_7

    .line 213
    const-string v8, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v8, v9

    goto :goto_0

    .line 214
    :cond_7
    if-nez v3, :cond_8

    .line 215
    :try_start_5
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 216
    :cond_8
    if-lez v4, :cond_9

    .line 217
    const/4 v6, 0x1

    .line 218
    const/4 v8, 0x0

    :try_start_6
    array-length v9, v3

    sub-int/2addr v9, v4

    invoke-static {v3, v4, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    const/4 v8, 0x0

    array-length v9, v3

    sub-int/2addr v9, v4

    invoke-static {v1, v8, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_9
    if-eqz p2, :cond_a

    if-nez v6, :cond_b

    .line 222
    :cond_a
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 223
    :cond_b
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 225
    .end local v1           #data:[B
    .end local v3           #last:[B
    .end local v4           #len:I
    .end local v6           #rolled:Z
    .end local v7           #tmp:[B
    :cond_c
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 229
    .restart local v1       #data:[B
    :cond_d
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 230
    .restart local v4       #len:I
    if-lez v4, :cond_e

    .line 231
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 232
    :cond_e
    array-length v8, v1

    if-eq v4, v8, :cond_d

    .line 233
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v8

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .end local v0           #contents:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v4           #len:I
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v8
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method
