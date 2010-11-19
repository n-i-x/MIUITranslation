.class public Lentagged/audioformats/mp3/util/Id3v2TagReader;
.super Ljava/lang/Object;


# instance fields
.field private ID3Flags:[Z

.field private final synchronizer:Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

.field private final tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->synchronizer:Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

    new-instance v0, Lentagged/audioformats/mp3/util/Id3v24TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    return-void
.end method

.method private processID3Flags(B)[Z
    .locals 7

    const/4 v0, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    new-array v0, v0, [Z

    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    aput-boolean v4, v0, v3

    :goto_0
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    aput-boolean v4, v0, v4

    :goto_1
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    aput-boolean v4, v0, v5

    :goto_2
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    aput-boolean v4, v0, v6

    :goto_3
    return-object v0

    :cond_0
    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_1
    aput-boolean v3, v0, v4

    goto :goto_1

    :cond_2
    aput-boolean v3, v0, v5

    goto :goto_2

    :cond_3
    aput-boolean v3, v0, v6

    goto :goto_3

    :cond_4
    new-array v0, v0, [Z

    aput-boolean v3, v0, v3

    aput-boolean v3, v0, v4

    aput-boolean v3, v0, v5

    aput-boolean v3, v0, v6

    goto :goto_3
.end method

.method private readSyncsafeInteger(Ljava/io/RandomAccessFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "ID3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Not an ID3 tag"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    invoke-direct {p0, v2}, Lentagged/audioformats/mp3/util/Id3v2TagReader;->processID3Flags(B)[Z

    move-result-object v2

    iput-object v2, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v2TagReader;->readSyncsafeInteger(Ljava/io/RandomAccessFile;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->synchronizer:Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

    invoke-virtual {v3, v2}, Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_1
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    iget-object v1, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    sget-byte v3, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    invoke-virtual {v0, v2, v1, v3}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    iget-object v1, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    sget-byte v3, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    invoke-virtual {v0, v2, v1, v3}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    iget-object v1, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    sget-byte v3, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    invoke-virtual {v0, v2, v1, v3}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ID3v2 tag version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not supported !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
