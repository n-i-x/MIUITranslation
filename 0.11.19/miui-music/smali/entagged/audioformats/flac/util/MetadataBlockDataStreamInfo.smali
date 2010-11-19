.class public Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;
.super Ljava/lang/Object;


# instance fields
.field private bitsPerSample:I

.field private channelNumber:I

.field private isValid:Z

.field private length:F

.field private samplingRate:I


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/16 v4, 0xd

    const/16 v3, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->isValid:Z

    array-length v0, p1

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->isValid:Z

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    aget-byte v2, p1, v3

    invoke-direct {p0, v0, v1, v2}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->readSamplingRate(BBB)I

    move-result v0

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->samplingRate:I

    aget-byte v0, p1, v3

    invoke-direct {p0, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->channelNumber:I

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->samplingRate:I

    iget v1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->channelNumber:I

    div-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->samplingRate:I

    aget-byte v0, p1, v3

    invoke-direct {p0, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    aget-byte v1, p1, v4

    invoke-direct {p0, v1}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->bitsPerSample:I

    aget-byte v1, p1, v4

    const/16 v0, 0xe

    aget-byte v2, p1, v0

    const/16 v0, 0xf

    aget-byte v3, p1, v0

    const/16 v0, 0x10

    aget-byte v4, p1, v0

    const/16 v0, 0x11

    aget-byte v5, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->readSampleNumber(BBBBB)I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->samplingRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->length:F

    goto :goto_0
.end method

.method private readSampleNumber(BBBBB)I
    .locals 2

    invoke-direct {p0, p5}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    invoke-direct {p0, p4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-direct {p0, p3}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-direct {p0, p2}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    invoke-direct {p0, p1}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method private readSamplingRate(BBB)I
    .locals 2

    invoke-direct {p0, p3}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v0, v0, 0x3

    invoke-direct {p0, p2}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    invoke-direct {p0, p1}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method private u(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getChannelNumber()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->channelNumber:I

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FLAC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " bits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->length:F

    float-to-int v0, v0

    return v0
.end method

.method public getPreciseLength()F
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->length:F

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->samplingRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->isValid:Z

    return v0
.end method
