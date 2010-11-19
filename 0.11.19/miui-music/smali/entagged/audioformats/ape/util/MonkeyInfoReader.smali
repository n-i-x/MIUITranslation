.class public Lentagged/audioformats/ape/util/MonkeyInfoReader;
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/16 v5, 0x18

    const/4 v3, 0x4

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: File empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "File is empty"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v1, v3, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "MAC "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "\'MAC \' Header not found"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v1, v3, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v1

    const/16 v2, 0xf82

    if-ge v1, v2, :cond_2

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Monkey Audio version <= 3.97 is not supported"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v2, 0x2c

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v3, Lentagged/audioformats/ape/util/MonkeyDescriptor;

    invoke-direct {v3, v2}, Lentagged/audioformats/ape/util/MonkeyDescriptor;-><init>([B)V

    new-array v2, v5, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v4, Lentagged/audioformats/ape/util/MonkeyHeader;

    invoke-direct {v4, v2}, Lentagged/audioformats/ape/util/MonkeyHeader;-><init>([B)V

    invoke-virtual {v3}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getRiffWavOffset()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0xc

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v3, Lentagged/audioformats/wav/util/WavRIFFHeader;

    invoke-direct {v3, v2}, Lentagged/audioformats/wav/util/WavRIFFHeader;-><init>([B)V

    invoke-virtual {v3}, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "No valid RIFF Header found"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v2, v5, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v3, Lentagged/audioformats/wav/util/WavFormatHeader;

    invoke-direct {v3, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;-><init>([B)V

    invoke-virtual {v3}, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "No valid WAV Header found"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v4}, Lentagged/audioformats/ape/util/MonkeyHeader;->getPreciseLength()F

    move-result v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v3}, Lentagged/audioformats/wav/util/WavFormatHeader;->getChannelNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    invoke-virtual {v3}, Lentagged/audioformats/wav/util/WavFormatHeader;->getSamplingRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-direct {p0, v2, v5, v6}, Lentagged/audioformats/ape/util/MonkeyInfoReader;->computeBitrate(IJ)I

    move-result v2

    invoke-virtual {v0, v2}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Monkey Audio v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-double v5, v1

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", compression level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lentagged/audioformats/ape/util/MonkeyHeader;->getCompressionLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    return-object v0
.end method
