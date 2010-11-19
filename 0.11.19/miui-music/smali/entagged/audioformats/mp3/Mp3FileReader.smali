.class public Lentagged/audioformats/mp3/Mp3FileReader;
.super Lentagged/audioformats/generic/AudioFileReader;


# instance fields
.field private idv1tr:Lentagged/audioformats/mp3/util/Id3v1TagReader;

.field private idv2tr:Lentagged/audioformats/mp3/util/Id3v2TagReader;

.field private ir:Lentagged/audioformats/mp3/util/Mp3InfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    new-instance v0, Lentagged/audioformats/mp3/util/Mp3InfoReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Mp3InfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->ir:Lentagged/audioformats/mp3/util/Mp3InfoReader;

    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv2tr:Lentagged/audioformats/mp3/util/Id3v2TagReader;

    new-instance v0, Lentagged/audioformats/mp3/util/Id3v1TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v1TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv1tr:Lentagged/audioformats/mp3/util/Id3v1TagReader;

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

    iget-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->ir:Lentagged/audioformats/mp3/util/Mp3InfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/mp3/util/Mp3InfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v6, ")"

    const-string v5, "("

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv2tr:Lentagged/audioformats/mp3/util/Id3v2TagReader;

    invoke-virtual {v1, p1}, Lentagged/audioformats/mp3/util/Id3v2TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v2Tag;
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    :try_start_1
    iget-object v2, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv1tr:Lentagged/audioformats/mp3/util/Id3v1TagReader;

    invoke-virtual {v2, p1}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v1Tag;
    :try_end_1
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    :cond_0
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lentagged/audioformats/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lentagged/audioformats/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-object v1, v4

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp3/Id3v2Tag;->merge(Lentagged/audioformats/Tag;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp3/Id3v2Tag;->hasId3v1(Z)V

    goto :goto_2
.end method
