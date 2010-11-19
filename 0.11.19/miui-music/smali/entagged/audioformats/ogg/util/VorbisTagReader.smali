.class public Lentagged/audioformats/ogg/util/VorbisTagReader;
.super Ljava/lang/Object;


# instance fields
.field private oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x1a

    const-wide/16 v3, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "OggS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "OggS Header could not be found, not an ogg stream"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v2, [B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v2, 0x1b

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v1, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v2, 0x1b

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v1, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "vorbis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Cannot find comment block (no vorbis header)"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/OggTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Error: The OGG Stream isn\'t valid, could not extract the tag"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method
