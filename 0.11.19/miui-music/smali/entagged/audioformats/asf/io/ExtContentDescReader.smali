.class public Lentagged/audioformats/asf/io/ExtContentDescReader;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v3

    sget-object v4, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v4, v3}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v3

    int-to-long v3, v3

    new-instance v5, Lentagged/audioformats/asf/data/ExtendedContentDescription;

    invoke-direct {v5, v1, v2, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>(JLjava/math/BigInteger;)V

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUTF16LEStr(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v6

    new-instance v7, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-direct {v7, v2, v6}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    packed-switch v6, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid datatype: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    invoke-direct {p0, p1}, Lentagged/audioformats/asf/io/ExtContentDescReader;->readBinaryData(Ljava/io/RandomAccessFile;)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5, v7}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addDescriptor(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUTF16LEStr(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lentagged/audioformats/asf/io/ExtContentDescReader;->readBinaryData(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBinaryValue([B)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lentagged/audioformats/asf/io/ExtContentDescReader;->readBoolean(Ljava/io/RandomAccessFile;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBooleanValue(Z)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lentagged/audioformats/asf/data/ContentDescriptor;->setDWordValue(J)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v7, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setWordValue(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT64(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lentagged/audioformats/asf/data/ContentDescriptor;->setQWordValue(J)V

    goto :goto_1

    :cond_0
    move-object v0, v5

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/asf/io/ExtContentDescReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/ExtContentDescReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/ExtContentDescReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readBinaryData(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private readBoolean(Ljava/io/RandomAccessFile;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Boolean value do require 4 Bytes. (Size value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
