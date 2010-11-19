.class public Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v3

    sget-object v4, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v4, v3}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v3, Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    invoke-direct {v3, v1, v2, v0}, Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;-><init>(JLjava/math/BigInteger;)V

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    :goto_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v4

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v5

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4, v5, v6}, Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;->addBitrateRecord(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v3

    :cond_1
    return-object v0
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
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
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
