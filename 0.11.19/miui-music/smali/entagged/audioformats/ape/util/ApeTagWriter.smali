.class public Lentagged/audioformats/ape/util/ApeTagWriter;
.super Ljava/lang/Object;


# instance fields
.field private tc:Lentagged/audioformats/ape/util/ApeTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/ape/util/ApeTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ape/util/ApeTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagWriter;->tc:Lentagged/audioformats/ape/util/ApeTagCreator;

    return-void
.end method

.method private tagExists(Ljava/io/RandomAccessFile;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "APETAGEX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lentagged/audioformats/ape/util/ApeTagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-direct {p0, p1}, Lentagged/audioformats/ape/util/ApeTagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0
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

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagWriter;->tc:Lentagged/audioformats/ape/util/ApeTagCreator;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lentagged/audioformats/ape/util/ApeTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, p2}, Lentagged/audioformats/ape/util/ApeTagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v1, "APE Tag other than version 2.0 are not supported"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v2

    const-wide/16 v4, 0x20

    add-long/2addr v4, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Overwriting old tag in mpc file"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Shrinking mpc file"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    sub-long v4, v7, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method
