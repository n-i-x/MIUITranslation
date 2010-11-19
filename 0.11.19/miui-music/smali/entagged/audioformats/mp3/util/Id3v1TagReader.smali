.class public Lentagged/audioformats/mp3/util/Id3v1TagReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p2, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v1Tag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x80

    const-wide/16 v11, 0x0

    const/16 v5, 0x1e

    new-instance v0, Lentagged/audioformats/mp3/Id3v1Tag;

    invoke-direct {v0}, Lentagged/audioformats/mp3/Id3v1Tag;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "TAG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "There is no Id3v1 Tag in this file"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, p1, v5}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v5}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v5}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v5}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    sub-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v7, 0x2

    new-array v7, v7, [B

    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v8, 0x0

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    new-instance v6, Ljava/lang/Integer;

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp3/Id3v1Tag;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lentagged/audioformats/mp3/Id3v1Tag;->setArtist(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lentagged/audioformats/mp3/Id3v1Tag;->setAlbum(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lentagged/audioformats/mp3/Id3v1Tag;->setYear(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lentagged/audioformats/mp3/Id3v1Tag;->setComment(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lentagged/audioformats/mp3/Id3v1Tag;->setTrack(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lentagged/audioformats/mp3/Id3v1Tag;->translateGenre(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp3/Id3v1Tag;->setGenre(Ljava/lang/String;)V

    return-object v0
.end method
