.class public Lentagged/audioformats/asf/io/ContentDescriptionReader;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStringSizes(Ljava/io/RandomAccessFile;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ContentDescription;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v3

    sget-object v4, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v4, v3}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v3, Lentagged/audioformats/asf/data/ContentDescription;

    invoke-direct {v3, v1, v2, v0}, Lentagged/audioformats/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    invoke-direct {p0, p1}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->getStringSizes(Ljava/io/RandomAccessFile;)[I

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, v5

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    aget v4, v0, v2

    if-lez v4, :cond_0

    aget v4, v0, v2

    invoke-static {p1, v4}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->readFixedSizeUTF16Str(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget v2, v0, v5

    if-lez v2, :cond_2

    aget-object v2, v1, v5

    invoke-virtual {v3, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    :cond_2
    aget v2, v0, v6

    if-lez v2, :cond_3

    aget-object v2, v1, v6

    invoke-virtual {v3, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    :cond_3
    aget v2, v0, v7

    if-lez v2, :cond_4

    aget-object v2, v1, v7

    invoke-virtual {v3, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setCopyRight(Ljava/lang/String;)V

    :cond_4
    aget v2, v0, v8

    if-lez v2, :cond_5

    aget-object v2, v1, v8

    invoke-virtual {v3, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    :cond_5
    aget v0, v0, v9

    if-lez v0, :cond_6

    aget-object v0, v1, v9

    invoke-virtual {v3, v0}, Lentagged/audioformats/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    :cond_6
    move-object v0, v3

    :cond_7
    return-object v0
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ContentDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/asf/io/ContentDescriptionReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/ContentDescriptionReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFixedSizeUTF16Str(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    array-length v1, v0

    if-lt v1, v3, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t read the necessary amount of bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
