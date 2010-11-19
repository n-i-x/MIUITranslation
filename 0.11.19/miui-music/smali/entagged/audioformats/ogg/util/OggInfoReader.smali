.class public Lentagged/audioformats/ogg/util/OggInfoReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v11, 0x0

    const/16 v5, 0x67

    const/4 v10, 0x0

    const-wide/high16 v8, -0x4010

    const/4 v7, 0x1

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    aget-byte v2, v1, v10

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_0

    aget-byte v2, v1, v7

    if-ne v2, v5, :cond_0

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const-wide/16 v5, 0x1a

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v1, v3, 0x1b

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v2, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v2, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Lentagged/audioformats/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    move-result-wide v1

    :goto_1
    cmpl-double v3, v1, v8

    if-nez v3, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Error: Could not find the Ogg Setup block"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const-wide/16 v5, 0x1a

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v3, v5, 0x1b

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v4, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v4, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v4, Lentagged/audioformats/ogg/util/VorbisCodecHeader;

    invoke-direct {v4, v3}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;-><init>([B)V

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getSamplingRate()I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMaxBitrate()I

    move-result v1

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMinBitrate()I

    move-result v1

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    invoke-virtual {v0, v10}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMaxBitrate()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMinBitrate()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    invoke-virtual {v0, v7}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lentagged/audioformats/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    invoke-virtual {v0, v7}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    goto :goto_2

    :cond_4
    move-wide v1, v8

    goto/16 :goto_1
.end method
