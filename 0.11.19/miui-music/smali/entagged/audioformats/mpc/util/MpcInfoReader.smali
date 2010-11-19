.class public Lentagged/audioformats/mpc/util/MpcInfoReader;
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    const-string v7, "MP+ Header not found"

    const-string v3, "MP+"

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: File empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "File is empty"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v1, v4, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "MP+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ID3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, p1}, Lentagged/audioformats/mpc/util/MpcInfoReader;->read_syncsafe_integer(Ljava/io/RandomAccessFile;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v1, v4, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "MP+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "MP+ Header not found"

    invoke-direct {v0, v7}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "MP+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "MP+ Header not found"

    invoke-direct {v0, v7}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x19

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lentagged/audioformats/mpc/util/MpcHeader;

    invoke-direct {v2, v1}, Lentagged/audioformats/mpc/util/MpcHeader;-><init>([B)V

    invoke-virtual {v2}, Lentagged/audioformats/mpc/util/MpcHeader;->getSamplesNumber()I

    move-result v1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4092

    mul-double/2addr v3, v5

    invoke-virtual {v2}, Lentagged/audioformats/mpc/util/MpcHeader;->getSamplingRate()I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v2}, Lentagged/audioformats/mpc/util/MpcHeader;->getChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    invoke-virtual {v2}, Lentagged/audioformats/mpc/util/MpcHeader;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    invoke-virtual {v2}, Lentagged/audioformats/mpc/util/MpcHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lentagged/audioformats/mpc/util/MpcHeader;->getEncoderInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lentagged/audioformats/mpc/util/MpcInfoReader;->computeBitrate(IJ)I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    return-object v0
.end method
