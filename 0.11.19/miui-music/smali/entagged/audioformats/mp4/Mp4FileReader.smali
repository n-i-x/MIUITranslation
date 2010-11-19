.class public Lentagged/audioformats/mp4/Mp4FileReader;
.super Lentagged/audioformats/generic/AudioFileReader;


# instance fields
.field private ir:Lentagged/audioformats/mp4/util/Mp4InfoReader;

.field private tr:Lentagged/audioformats/mp4/util/Mp4TagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4InfoReader;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4InfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp4/Mp4FileReader;->ir:Lentagged/audioformats/mp4/util/Mp4InfoReader;

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp4/Mp4FileReader;->tr:Lentagged/audioformats/mp4/util/Mp4TagReader;

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

    iget-object v0, p0, Lentagged/audioformats/mp4/Mp4FileReader;->ir:Lentagged/audioformats/mp4/util/Mp4InfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

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

    iget-object v0, p0, Lentagged/audioformats/mp4/Mp4FileReader;->tr:Lentagged/audioformats/mp4/util/Mp4TagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/mp4/util/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp4/Mp4Tag;

    move-result-object v0

    return-object v0
.end method
