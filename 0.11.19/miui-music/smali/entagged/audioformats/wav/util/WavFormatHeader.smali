.class public Lentagged/audioformats/wav/util/WavFormatHeader;
.super Ljava/lang/Object;


# instance fields
.field private bitrate:I

.field private bytesPerSecond:I

.field private channels:I

.field private isValid:Z

.field private sampleRate:I


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/high16 v5, 0x100

    const/high16 v4, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "fmt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    if-ne v0, v3, :cond_0

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    iput v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->channels:I

    const/16 v0, 0xf

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    mul-int/2addr v0, v5

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->sampleRate:I

    const/16 v0, 0x13

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    mul-int/2addr v0, v5

    const/16 v1, 0x12

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    const/16 v1, 0x10

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bytesPerSecond:I

    const/16 v0, 0x16

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    iput v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bitrate:I

    iput-boolean v3, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    :cond_0
    return-void
.end method

.method private u(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bitrate:I

    return v0
.end method

.method public getBytesPerSecond()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bytesPerSecond:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->channels:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->sampleRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RIFF-WAVE Header:\n"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
