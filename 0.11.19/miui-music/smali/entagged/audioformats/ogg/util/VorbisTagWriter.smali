.class public Lentagged/audioformats/ogg/util/VorbisTagWriter;
.super Ljava/lang/Object;


# instance fields
.field private reader:Lentagged/audioformats/ogg/util/VorbisTagReader;

.field private tc:Lentagged/audioformats/ogg/util/VorbisTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/ogg/util/VorbisTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/VorbisTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->tc:Lentagged/audioformats/ogg/util/VorbisTagCreator;

    new-instance v0, Lentagged/audioformats/ogg/util/VorbisTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/VorbisTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->reader:Lentagged/audioformats/ogg/util/VorbisTagReader;

    return-void
.end method

.method private createSegmentTable(IILentagged/audioformats/ogg/util/OggPageHeader;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p3}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0, v4}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->createSegments(IZ)[B

    move-result-object v1

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private createSegments(IZ)[B
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    div-int/lit16 v0, p1, 0xff

    rem-int/lit16 v1, p1, 0xff

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    new-array v0, v0, [B

    move v1, v2

    :goto_1
    array-length v2, v0

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v3

    mul-int/lit16 v1, v1, 0xff

    sub-int v1, p1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->reader:Lentagged/audioformats/ogg/util/VorbisTagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/VorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/ogg/OggTag;
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v1}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {v0}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lentagged/audioformats/ogg/OggTag;->setVendor(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v0}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1a

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    and-int/lit16 v4, v0, 0xff

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v4, 0x1b

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v6, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v6, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v6}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x1a

    add-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v2, 0x1b

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v1, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const/4 v0, 0x7

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    add-long/2addr v4, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x4

    new-array v4, v4, [B

    invoke-virtual {p2, v4}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    add-int/2addr v0, v5

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    int-to-long v7, v4

    add-long v4, v5, v7

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x4

    new-array v4, v4, [B

    invoke-virtual {p2, v4}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    const/4 v5, 0x0

    move v11, v5

    move v5, v0

    move v0, v11

    :goto_0
    if-ge v0, v4, :cond_0

    const/4 v6, 0x4

    new-array v6, v6, [B

    invoke-virtual {p2, v6}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    add-int/2addr v5, v7

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    int-to-long v9, v6

    add-long v6, v7, v9

    invoke-virtual {p2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    add-int/lit8 v4, v5, 0x1

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v1, "Unable to retreive old tag informations"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->tc:Lentagged/audioformats/ogg/util/VorbisTagCreator;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/VorbisTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/2addr v6, v5

    invoke-direct {p0, v4, v5, v1}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->createSegmentTable(IILentagged/audioformats/ogg/util/OggPageHeader;)[B

    move-result-object v5

    array-length v7, v5

    add-int/lit8 v7, v7, 0x1b

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "OggS"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->getSerialNumber()I

    move-result v7

    const/4 v8, 0x4

    new-array v8, v8, [B

    const/4 v9, 0x3

    const/high16 v10, -0x100

    and-int/2addr v10, v7

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    const/high16 v10, 0xff

    and-int/2addr v10, v7

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    const v10, 0xff00

    and-int/2addr v10, v7

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    const/4 v7, 0x4

    new-array v7, v7, [B

    const/4 v8, 0x3

    const/high16 v9, -0x100

    and-int/2addr v9, v1

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    const/high16 v9, 0xff

    and-int/2addr v9, v1

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    const v9, 0xff00

    and-int/2addr v9, v1

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x16

    array-length v7, v5

    const/16 v8, 0xff

    if-le v7, v8, :cond_2

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v1, "In this special case we need to create a new page, since we still hadn\'t the time for that we won\'t write because it wouldn\'t create an ogg file."

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v7, v5

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_3

    aget-byte v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p2, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lentagged/audioformats/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    add-int v3, v1, v2

    aget-byte v4, v0, v2

    invoke-virtual {v6, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
