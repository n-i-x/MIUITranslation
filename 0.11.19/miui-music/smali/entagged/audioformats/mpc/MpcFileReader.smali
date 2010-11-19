.class public Lentagged/audioformats/mpc/MpcFileReader;
.super Lentagged/audioformats/generic/AudioFileReader;


# instance fields
.field private ir:Lentagged/audioformats/mpc/util/MpcInfoReader;

.field private tr:Lentagged/audioformats/ape/util/ApeTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    new-instance v0, Lentagged/audioformats/mpc/util/MpcInfoReader;

    invoke-direct {v0}, Lentagged/audioformats/mpc/util/MpcInfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mpc/MpcFileReader;->ir:Lentagged/audioformats/mpc/util/MpcInfoReader;

    new-instance v0, Lentagged/audioformats/ape/util/ApeTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ape/util/ApeTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mpc/MpcFileReader;->tr:Lentagged/audioformats/ape/util/ApeTagReader;

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

    iget-object v0, p0, Lentagged/audioformats/mpc/MpcFileReader;->ir:Lentagged/audioformats/mpc/util/MpcInfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/mpc/util/MpcInfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

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

    iget-object v0, p0, Lentagged/audioformats/mpc/MpcFileReader;->tr:Lentagged/audioformats/ape/util/ApeTagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ape/util/ApeTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;

    move-result-object v0

    return-object v0
.end method
