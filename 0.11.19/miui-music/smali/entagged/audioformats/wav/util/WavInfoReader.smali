.class public Lentagged/audioformats/wav/util/WavInfoReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "This is not a WAV File (<12 bytes)"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lentagged/audioformats/wav/util/WavRIFFHeader;

    invoke-direct {v2, v1}, Lentagged/audioformats/wav/util/WavRIFFHeader;-><init>([B)V

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lentagged/audioformats/wav/util/WavFormatHeader;

    invoke-direct {v2, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;-><init>([B)V

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-float v1, v3

    const/high16 v3, 0x4210

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getBytesPerSecond()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "WAV-RIFF "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getBitrate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " bits"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getBytesPerSecond()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    return-object v0

    :cond_1
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Wav Format Header not valid"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Wav RIFF Header not valid"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
