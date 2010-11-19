.class public Lentagged/audioformats/asf/io/StreamChunkReader;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v6

    sget-object v7, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v7, v6}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v7

    sget-object v8, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v8, v7}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v8, v7}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT64(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v15

    and-int/lit8 v16, v15, 0x7f

    const v17, 0x8000

    and-int v15, v15, v17

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    :goto_0
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    sget-object v17, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    new-instance v3, Lentagged/audioformats/asf/data/AudioStreamChunk;

    invoke-direct {v3, v4, v5, v6}, Lentagged/audioformats/asf/data/AudioStreamChunk;-><init>(JLjava/math/BigInteger;)V

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v17

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v19

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v23

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v3, v4, v5}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    invoke-virtual {v3, v6, v7}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setChannelCount(J)V

    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    move-object v0, v3

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    invoke-virtual {v3, v8}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setErrorConcealment(Lentagged/audioformats/asf/data/GUID;)V

    move-object v0, v3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    move-object v0, v3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setCodecData([B)V

    :cond_1
    :goto_1
    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/StreamChunk;->setStreamNumber(I)V

    invoke-virtual {v3, v13, v14}, Lentagged/audioformats/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    invoke-virtual {v3, v11, v12}, Lentagged/audioformats/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    invoke-virtual {v3, v9, v10}, Lentagged/audioformats/asf/data/StreamChunk;->setTimeOffset(J)V

    invoke-virtual {v3, v15}, Lentagged/audioformats/asf/data/StreamChunk;->setContentEncrypted(Z)V

    :cond_2
    return-object v3

    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_4
    sget-object v8, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v8, v7}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v3, Lentagged/audioformats/asf/data/VideoStreamChunk;

    invoke-direct {v3, v4, v5, v6}, Lentagged/audioformats/asf/data/VideoStreamChunk;-><init>(JLjava/math/BigInteger;)V

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v8

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const/16 v8, 0x10

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    const/4 v8, 0x4

    new-array v8, v8, [B

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v3, v4, v5}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    invoke-virtual {v3, v6, v7}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    invoke-virtual {v3, v8}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setCodecId([B)V

    goto :goto_1
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamChunk;
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
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/asf/io/StreamChunkReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/StreamChunkReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/StreamChunkReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
