.class public Lentagged/audioformats/flac/util/FlacInfoReader;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z

.field static class$entagged$audioformats$flac$util$FlacInfoReader:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lentagged/audioformats/flac/util/FlacInfoReader;->class$entagged$audioformats$flac$util$FlacInfoReader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "entagged.audioformats.flac.util.FlacInfoReader"

    invoke-static {v0}, Lentagged/audioformats/flac/util/FlacInfoReader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/flac/util/FlacInfoReader;->class$entagged$audioformats$flac$util$FlacInfoReader:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lentagged/audioformats/flac/util/FlacInfoReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lentagged/audioformats/flac/util/FlacInfoReader;->class$entagged$audioformats$flac$util$FlacInfoReader:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v7, 0x4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Error: File empty"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v7, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "fLaC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "fLaC Header not found"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    new-array v1, v7, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-direct {v2, v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;-><init>([B)V

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBlockType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;-><init>([B)V

    invoke-virtual {v1}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "FLAC StreamInfo not valid"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock()Z

    move-result v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    sget-boolean v1, Lentagged/audioformats/flac/util/FlacInfoReader;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    new-instance v1, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v1}, Lentagged/audioformats/EncodingInfo;-><init>()V

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getChannelNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getSamplingRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lentagged/audioformats/flac/util/FlacInfoReader;->computeBitrate(IJ)I

    move-result v0

    invoke-virtual {v1, v0}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    return-object v1
.end method
