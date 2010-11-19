.class public Lentagged/audioformats/ogg/OggFileReader;
.super Lentagged/audioformats/generic/AudioFileReader;


# instance fields
.field private ir:Lentagged/audioformats/ogg/util/OggInfoReader;

.field private otr:Lentagged/audioformats/ogg/util/VorbisTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    new-instance v0, Lentagged/audioformats/ogg/util/OggInfoReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggInfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/OggFileReader;->ir:Lentagged/audioformats/ogg/util/OggInfoReader;

    new-instance v0, Lentagged/audioformats/ogg/util/VorbisTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/VorbisTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/OggFileReader;->otr:Lentagged/audioformats/ogg/util/VorbisTagReader;

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

    iget-object v0, p0, Lentagged/audioformats/ogg/OggFileReader;->ir:Lentagged/audioformats/ogg/util/OggInfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/OggInfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

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

    iget-object v0, p0, Lentagged/audioformats/ogg/OggFileReader;->otr:Lentagged/audioformats/ogg/util/VorbisTagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/VorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;

    move-result-object v0

    return-object v0
.end method
