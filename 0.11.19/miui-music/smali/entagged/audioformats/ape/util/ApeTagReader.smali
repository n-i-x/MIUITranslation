.class public Lentagged/audioformats/ape/util/ApeTagReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x4

    const/4 v10, 0x0

    new-instance v0, Lentagged/audioformats/ape/ApeTag;

    invoke-direct {v0}, Lentagged/audioformats/ape/ApeTag;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "APETAGEX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "There is no APE Tag in this file"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, v11, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1, v10, v12}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v1

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "APE Tag other than version 2.0 are not supported"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v1, v11, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1, v10, v12}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v1

    new-array v3, v11, [B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v3, v10, v12}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v3

    new-array v4, v11, [B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move v1, v10

    :goto_0
    if-ge v1, v3, :cond_6

    new-array v2, v11, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v2, v10, v12}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v2

    const v4, 0x7a120

    if-le v2, v4, :cond_2

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Item size is much too large: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v4, v11, [B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    aget-byte v4, v4, v10

    and-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x1

    if-ne v4, v13, :cond_3

    move v4, v13

    :goto_1
    move v5, v10

    :goto_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v4, v10

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    int-to-long v8, v5

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v5, v5, [B

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    if-nez v4, :cond_5

    new-instance v4, Lentagged/audioformats/ape/util/ApeTagTextField;

    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v6, v5}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lentagged/audioformats/ape/ApeTag;->add(Lentagged/audioformats/generic/TagField;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    new-instance v4, Lentagged/audioformats/ape/util/ApeTagBinaryField;

    invoke-direct {v4, v6, v2}, Lentagged/audioformats/ape/util/ApeTagBinaryField;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Lentagged/audioformats/ape/ApeTag;->add(Lentagged/audioformats/generic/TagField;)V

    goto :goto_3

    :cond_6
    return-object v0
.end method
