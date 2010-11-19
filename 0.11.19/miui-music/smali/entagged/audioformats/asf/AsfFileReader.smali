.class public Lentagged/audioformats/asf/AsfFileReader;
.super Lentagged/audioformats/generic/AudioFileReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    :try_start_0
    invoke-static {p1}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getKbps()I

    move-result v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ASF (audio): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v3

    invoke-virtual {v3}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/FileHeader;->getPreciseDuration()F

    move-result v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_1
    instance-of v0, p0, Lentagged/audioformats/exceptions/CannotReadException;

    if-eqz v0, :cond_2

    check-cast p0, Lentagged/audioformats/exceptions/CannotReadException;

    throw p0

    :cond_2
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to read. Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :try_start_0
    invoke-static {p1}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lentagged/audioformats/asf/util/TagConverter;->createTagOf(Lentagged/audioformats/asf/data/AsfHeader;)Lentagged/audioformats/Tag;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p0, Lentagged/audioformats/exceptions/CannotReadException;

    if-eqz v0, :cond_2

    check-cast p0, Lentagged/audioformats/exceptions/CannotReadException;

    throw p0

    :cond_2
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to read. Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
