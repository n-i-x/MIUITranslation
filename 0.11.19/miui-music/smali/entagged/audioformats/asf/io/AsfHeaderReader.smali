.class public Lentagged/audioformats/asf/io/AsfHeaderReader;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v0

    sget-object v3, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v3, v0}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lentagged/audioformats/asf/io/ChunkHeaderReader;->readChunckHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/Chunk;->getChunckEnd()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lentagged/audioformats/asf/data/AsfHeader;

    invoke-direct/range {v0 .. v5}, Lentagged/audioformats/asf/data/AsfHeader;-><init>(JLjava/math/BigInteger;J)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v9

    move-object v3, v9

    move-object v4, v9

    move-object v5, v9

    move-object v6, v9

    move-object v7, v9

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/asf/data/Chunk;

    if-nez v7, :cond_2

    invoke-static {p1, p0}, Lentagged/audioformats/asf/io/FileHeaderReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_2
    if-nez v6, :cond_3

    invoke-static {p1, p0}, Lentagged/audioformats/asf/io/ExtContentDescReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_3
    if-nez v5, :cond_4

    invoke-static {p1, p0}, Lentagged/audioformats/asf/io/EncodingChunkReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_4
    if-nez v4, :cond_5

    invoke-static {p1, p0}, Lentagged/audioformats/asf/io/StreamChunkReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Lentagged/audioformats/asf/data/AsfHeader;->addStreamChunk(Lentagged/audioformats/asf/data/StreamChunk;)V

    move-object v4, v9

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    invoke-static {p1, p0}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_6
    if-nez v2, :cond_7

    invoke-static {p1, p0}, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_7
    invoke-virtual {v0, p0}, Lentagged/audioformats/asf/data/AsfHeader;->addUnspecifiedChunk(Lentagged/audioformats/asf/data/Chunk;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v7}, Lentagged/audioformats/asf/data/AsfHeader;->setFileHeader(Lentagged/audioformats/asf/data/FileHeader;)V

    invoke-virtual {v0, v5}, Lentagged/audioformats/asf/data/AsfHeader;->setEncodingChunk(Lentagged/audioformats/asf/data/EncodingChunk;)V

    invoke-virtual {v0, v6}, Lentagged/audioformats/asf/data/AsfHeader;->setExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    invoke-virtual {v0, v3}, Lentagged/audioformats/asf/data/AsfHeader;->setContentDescription(Lentagged/audioformats/asf/data/ContentDescription;)V

    invoke-virtual {v0, v2}, Lentagged/audioformats/asf/data/AsfHeader;->setStreamBitratePropertiesChunk(Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;)V

    :goto_2
    return-object v0

    :cond_9
    move-object v0, v9

    goto :goto_2
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lentagged/audioformats/asf/io/AsfHeaderReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/AsfHeaderReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/AsfHeaderReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v0

    return-object v0
.end method
