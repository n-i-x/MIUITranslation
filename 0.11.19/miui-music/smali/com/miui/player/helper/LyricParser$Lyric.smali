.class public Lcom/miui/player/helper/LyricParser$Lyric;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation


# instance fields
.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/LyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileAbsolutePath:Ljava/lang/String;

.field private final mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

.field private mIsModified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "filePath"
    .parameter "header"
    .parameter
    .parameter "isModified"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/player/helper/LyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/LyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/LyricParser$LyricEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    .line 103
    iput-object p3, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 104
    iput-boolean p4, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mIsModified:Z

    .line 105
    return-void
.end method

.method private writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "fw"
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "[%s:%s]"

    .line 150
    .local v0, pattern:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 151
    :goto_0
    const-string v1, "[%s:%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 153
    return-void

    .line 150
    :cond_0
    const-string v1, ""

    move-object p3, v1

    goto :goto_0
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v1, v0, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mIsModified:Z

    .line 110
    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent(I)Lcom/miui/player/helper/LyricParser$LyricEntity;
    .locals 4
    .parameter "index"

    .prologue
    const-string v3, ""

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    if-gez p1, :cond_0

    .line 204
    new-instance v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .end local v0           #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v3}, Lcom/miui/player/helper/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 211
    .restart local v0       #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 206
    new-instance v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .end local v0           #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    iget-object v1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    invoke-direct {v0, v1, v3}, Lcom/miui/player/helper/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .restart local v0       #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    check-cast v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .restart local v0       #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    goto :goto_0
.end method

.method public getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;
    .locals 12
    .parameter "time"

    .prologue
    .line 174
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v1, v8, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    .line 176
    .local v1, offset:I
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, v0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_0

    .line 177
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    .line 198
    .end local p0
    :goto_0
    return-object v8

    .line 180
    .restart local p0
    :cond_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 181
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, v2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    add-int v7, v8, v1

    .line 182
    .local v7, timeThis:I
    int-to-long v8, v7

    cmp-long v8, v8, p1

    if-lez v8, :cond_2

    .line 183
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, p0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    add-int v6, v8, v1

    .line 184
    .local v6, timePrev:I
    const-wide/16 v2, 0x0

    .line 185
    .local v2, percent:D
    if-le v7, v6, :cond_1

    .line 186
    int-to-long v8, v6

    sub-long v8, p1, v8

    long-to-double v8, v8

    sub-int v10, v7, v6

    int-to-double v10, v10

    div-double v2, v8, v10

    .line 188
    :cond_1
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-direct {v8, v9, v2, v3}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 180
    .end local v2           #percent:D
    .end local v6           #timePrev:I
    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v7           #timeThis:I
    :cond_3
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #i:I
    check-cast v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, v0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    int-to-long v4, v8

    .line 193
    .local v4, timeLast:J
    sub-long v8, p1, v4

    const-wide/16 v10, 0x1f40

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 194
    sub-long v8, p1, v4

    long-to-double v8, v8

    const-wide v10, 0x40bf400000000000L

    div-double v2, v8, v10

    .line 195
    .restart local v2       #percent:D
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-direct {v8, v9, v2, v3}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 198
    .end local v2           #percent:D
    :cond_4
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    iget-object v9, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mIsModified:Z

    return v0
.end method

.method public save()Z
    .locals 7

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 123
    .local v4, isSuccess:Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 124
    .local v2, fw:Ljava/io/BufferedWriter;
    const-string v5, "ti"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->title:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v5, "ar"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->artist:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v5, "al"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->album:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "by"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->editor:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "ve"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->version:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "offset"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v5, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 132
    .local v1, entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    invoke-virtual {p0, v2, v1}, Lcom/miui/player/helper/LyricParser$Lyric;->writeEntityElement(Ljava/io/BufferedWriter;Lcom/miui/player/helper/LyricParser$LyricEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v1           #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    .end local v2           #fw:Ljava/io/BufferedWriter;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 141
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 135
    .restart local v2       #fw:Ljava/io/BufferedWriter;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeEntityElement(Ljava/io/BufferedWriter;Lcom/miui/player/helper/LyricParser$LyricEntity;)V
    .locals 11
    .parameter "fw"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v3, "[%02d:%02d.%02d]%s"

    .line 157
    .local v3, patternNoHour:Ljava/lang/String;
    const-string v4, "[%02d:%02d:%02d.%02d]%s"

    .line 158
    .local v4, patternWithHour:Ljava/lang/String;
    iget v7, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    div-int/lit16 v5, v7, 0x3e8

    .line 159
    .local v5, s:I
    div-int/lit16 v1, v5, 0xe10

    .line 160
    .local v1, hour:I
    rem-int/lit16 v7, v5, 0xe10

    div-int/lit8 v2, v7, 0x3c

    .line 161
    .local v2, minute:I
    rem-int/lit8 v6, v5, 0x3c

    .line 162
    .local v6, second:I
    iget v7, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    rem-int/lit16 v0, v7, 0x3e8

    .line 164
    .local v0, delta:I
    if-lez v1, :cond_0

    .line 165
    const-string v7, "[%02d:%02d:%02d.%02d]%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 170
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 171
    return-void

    .line 167
    :cond_0
    const-string v7, "[%02d:%02d.%02d]%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
