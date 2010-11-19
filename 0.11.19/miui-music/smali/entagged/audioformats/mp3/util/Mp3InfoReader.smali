.class public Lentagged/audioformats/mp3/util/Mp3InfoReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read_syncsafe_integer(Ljava/io/RandomAccessFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

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

    const/4 v11, 0x1

    const-wide/16 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v12, 0x0

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: File empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "File is empty"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v1, v9, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "ID3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-wide/16 v1, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Mp3InfoReader;->read_syncsafe_integer(Ljava/io/RandomAccessFile;)I

    move-result v1

    add-int/lit8 v2, v1, 0xa

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    :goto_1
    aget-byte v3, v2, v12

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    aget-byte v3, v2, v11

    and-int/lit16 v3, v3, 0xe0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_1

    aget-byte v3, v2, v11

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_1

    aget-byte v3, v2, v10

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_1

    aget-byte v3, v2, v10

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_1

    :cond_2
    new-instance v3, Lentagged/audioformats/mp3/util/MPEGFrame;

    invoke-direct {v3, v2}, Lentagged/audioformats/mp3/util/MPEGFrame;-><init>([B)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Error: could not synchronize to first mp3 frame"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getFrameLength()I

    move-result v2

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v4

    if-ne v4, v9, :cond_5

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getChannelMode()I

    move-result v4

    if-ne v4, v9, :cond_5

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v4, v12, 0x11

    :goto_2
    const/16 v5, 0x10

    new-array v5, v5, [B

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x4

    new-array v6, v6, [B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v7, Lentagged/audioformats/mp3/util/XingMPEGFrame;

    invoke-direct {v7, v5, v6}, Lentagged/audioformats/mp3/util/XingMPEGFrame;-><init>([B[B)V

    invoke-interface {v7}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->isValid()Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v12, 0x78

    const/16 v6, 0x24

    new-array v6, v6, [B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v8, Lentagged/audioformats/mp3/util/LameMPEGFrame;

    invoke-direct {v8, v6}, Lentagged/audioformats/mp3/util/LameMPEGFrame;-><init>([B)V

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValid()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    const-wide/16 v10, 0x24

    sub-long/2addr v8, v10

    invoke-virtual {p1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    int-to-long v10, v2

    add-long/2addr v8, v10

    add-int v2, v4, v5

    add-int/lit8 v2, v2, 0x4

    int-to-long v4, v2

    sub-long v4, v8, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v2, v7

    :goto_4
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSampleNumber()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-interface {v2}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->isValid()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->getFrameCount()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    invoke-interface {v2}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->isVbr()Z

    move-result v8

    invoke-virtual {v0, v8}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    invoke-interface {v2}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->getFileSize()I

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    int-to-long v10, v1

    sub-long/2addr v8, v10

    :goto_5
    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    long-to-double v8, v8

    invoke-interface {v2}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->getFrameCount()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v4

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v1, v4

    div-double v1, v8, v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    move-wide v1, v6

    :goto_6
    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v2

    invoke-virtual {v3, v2}, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getLayerVersion()I

    move-result v2

    invoke-virtual {v3, v2}, Lentagged/audioformats/mp3/util/MPEGFrame;->layerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v4

    if-ne v4, v9, :cond_6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v4, v12, 0x20

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v4

    if-ne v4, v10, :cond_7

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getChannelMode()I

    move-result v4

    if-ne v4, v9, :cond_7

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x9

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v4, v12, 0x9

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v4

    if-ne v4, v10, :cond_d

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v4, v12, 0x11

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x24

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x78

    sub-long/2addr v5, v7

    int-to-long v7, v4

    sub-long v4, v5, v7

    const-wide/16 v6, 0x20

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x12

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v4, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;

    invoke-direct {v4, v2}, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;-><init>([B)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x12

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v2, v4

    goto/16 :goto_4

    :cond_a
    int-to-long v8, v8

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getFrameLength()I

    move-result v2

    if-nez v2, :cond_c

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Error while reading header(maybe file is corrupted, or missing first mpeg frame before xing header)"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    int-to-long v8, v1

    sub-long/2addr v6, v8

    int-to-long v1, v2

    div-long v1, v6, v1

    long-to-double v1, v1

    mul-double/2addr v1, v4

    invoke-virtual {v0, v12}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/MPEGFrame;->getBitrate()I

    move-result v4

    invoke-virtual {v0, v4}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    goto/16 :goto_6

    :cond_d
    move v4, v12

    goto/16 :goto_2

    :cond_e
    move v1, v12

    goto/16 :goto_0
.end method
