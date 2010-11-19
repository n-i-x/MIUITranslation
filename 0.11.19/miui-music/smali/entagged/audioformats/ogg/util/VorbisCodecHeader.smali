.class public Lentagged/audioformats/ogg/util/VorbisCodecHeader;
.super Ljava/lang/Object;


# instance fields
.field private audioChannels:I

.field private audioSampleRate:I

.field private bitrateMaximal:I

.field private bitrateMinimal:I

.field private bitrateNominal:I

.field private isValid:Z

.field private vorbisVersion:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->isValid:Z

    invoke-virtual {p0, p1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->generateCodecHeader([B)V

    return-void
.end method

.method private u(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public generateCodecHeader([B)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    if-ne v0, v3, :cond_0

    const-string v0, "vorbis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->vorbisVersion:I

    const/16 v0, 0xb

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v0

    iput v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioChannels:I

    const/16 v0, 0xc

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v0

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioSampleRate:I

    const/16 v0, 0x10

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v0

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x12

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x13

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMinimal:I

    const/16 v0, 0x14

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v0

    const/16 v1, 0x15

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x16

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x17

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateNominal:I

    const/16 v0, 0x18

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v0

    const/16 v1, 0x19

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x1a

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x1b

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMaximal:I

    const/16 v0, 0x1d

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->isValid:Z

    :cond_0
    return-void
.end method

.method public getChannelNumber()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioChannels:I

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Ogg Vorbis Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->vorbisVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMaximal:I

    return v0
.end method

.method public getMinBitrate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMinimal:I

    return v0
.end method

.method public getNominalBitrate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateNominal:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioSampleRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->isValid:Z

    return v0
.end method
