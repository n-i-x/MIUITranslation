.class public Lentagged/audioformats/flac/FlacFileReader;
.super Lentagged/audioformats/generic/AudioFileReader;


# instance fields
.field private ir:Lentagged/audioformats/flac/util/FlacInfoReader;

.field private tr:Lentagged/audioformats/flac/util/FlacTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    new-instance v0, Lentagged/audioformats/flac/util/FlacInfoReader;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacInfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/FlacFileReader;->ir:Lentagged/audioformats/flac/util/FlacInfoReader;

    new-instance v0, Lentagged/audioformats/flac/util/FlacTagReader;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/FlacFileReader;->tr:Lentagged/audioformats/flac/util/FlacTagReader;

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/flac/FlacFileReader;->ir:Lentagged/audioformats/flac/util/FlacInfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/flac/util/FlacInfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/flac/FlacFileReader;->tr:Lentagged/audioformats/flac/util/FlacTagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/flac/util/FlacTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v0

    return-object v0
.end method
