.class public Lentagged/audioformats/mp3/util/Id3v2TagWriter;
.super Ljava/lang/Object;


# instance fields
.field private tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    return-void
.end method

.method private canOverwrite(Ljava/io/RandomAccessFile;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tagExists(Ljava/nio/channels/FileChannel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "ID3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tagExists(Ljava/nio/channels/FileChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x15

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int v4, v2, v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v4, 0xa

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0xff

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xe0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v6, 0xf0

    if-eq v3, v6, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/16 v6, 0x8

    if-eq v3, v6, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    int-to-long v8, v4

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    sub-long/2addr v6, v8

    int-to-long v4, v5

    sub-long v4, v6, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-object v0, p2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tagExists(Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->canOverwrite(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v1, "Overwritting of this kind of ID3v2 tag not supported yet"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x15

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    add-int/2addr v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0xa

    iget-object v2, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    invoke-virtual {v2, p1}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->getTagLength(Lentagged/audioformats/Tag;)I

    move-result v2

    if-lt v0, v2, :cond_1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    sub-int/2addr v0, v2

    invoke-virtual {v3, p1, v0}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    return-void

    :cond_1
    move v4, v0

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/32 v5, 0xf00000

    cmp-long v0, v2, v5

    if-lez v0, :cond_2

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    const/16 v3, 0xfa0

    invoke-virtual {v2, p1, v3}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    int-to-long v7, v4

    sub-long v4, v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    const/16 v4, 0xfa0

    invoke-virtual {v3, p1, v4}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v0, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    goto :goto_0
.end method
