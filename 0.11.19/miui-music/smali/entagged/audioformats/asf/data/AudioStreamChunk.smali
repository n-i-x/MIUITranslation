.class public Lentagged/audioformats/asf/data/AudioStreamChunk;
.super Lentagged/audioformats/asf/data/StreamChunk;


# static fields
.field public static final CODEC_DESCRIPTIONS:[[Ljava/lang/String;


# instance fields
.field private averageBytesPerSec:J

.field private bitsPerSample:I

.field private blockAlignment:J

.field private channelCount:J

.field private codecData:[B

.field private compressionFormat:J

.field private errorConcealment:Lentagged/audioformats/asf/data/GUID;

.field private samplingRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "161"

    aput-object v2, v1, v4

    const-string v2, " (Windows Media Audio (ver 7,8,9))"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "162"

    aput-object v2, v1, v4

    const-string v2, " (Windows Media Audio 9 series (Professional))"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "163"

    aput-object v2, v1, v4

    const-string v2, "(Windows Media Audio 9 series (Lossless))"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7A21"

    aput-object v3, v2, v4

    const-string v3, " (GSM-AMR (CBR))"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7A22"

    aput-object v3, v2, v4

    const-string v3, " (GSM-AMR (VBR))"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lentagged/audioformats/asf/data/StreamChunk;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getAverageBytesPerSec()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->bitsPerSample:I

    return v0
.end method

.method public getBlockAlignment()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->blockAlignment:J

    return-wide v0
.end method

.method public getChannelCount()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->channelCount:J

    return-wide v0
.end method

.method public getCodecData()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->codecData:[B

    return-object v0
.end method

.method public getCodecDescription()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getCompressionFormat()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " (Unknown)"

    move v2, v5

    :goto_0
    sget-object v3, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    aget-object v3, v3, v2

    aget-object v3, v3, v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, "0x0"

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "0x"

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getCompressionFormat()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->compressionFormat:J

    return-wide v0
.end method

.method public getErrorConcealment()Lentagged/audioformats/asf/data/GUID;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->errorConcealment:Lentagged/audioformats/asf/data/GUID;

    return-object v0
.end method

.method public getKbps()I
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getAverageBytesPerSec()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSamplingRate()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->samplingRate:J

    return-wide v0
.end method

.method public isErrorConcealed()Z
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getErrorConcealment()Lentagged/audioformats/asf/data/GUID;

    move-result-object v0

    sget-object v1, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/StreamChunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "AudioStream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Audio info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "      Bitrate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getKbps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "      Channels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "      Bits per Sample: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getBitsPerSample()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "      Formatcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAverageBytesPerSec(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    return-void
.end method

.method public setBitsPerSample(I)V
    .locals 0

    iput p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->bitsPerSample:I

    return-void
.end method

.method public setBlockAlignment(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->blockAlignment:J

    return-void
.end method

.method public setChannelCount(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->channelCount:J

    return-void
.end method

.method public setCodecData([B)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->codecData:[B

    return-void
.end method

.method public setCompressionFormat(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->compressionFormat:J

    return-void
.end method

.method public setErrorConcealment(Lentagged/audioformats/asf/data/GUID;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->errorConcealment:Lentagged/audioformats/asf/data/GUID;

    return-void
.end method

.method public setSamplingRate(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->samplingRate:J

    return-void
.end method
