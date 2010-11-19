.class public Lentagged/audioformats/asf/io/FileHeaderReader;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/FileHeader;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v5

    sget-object v6, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v6, v5}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v5

    const/16 v2, 0x10

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-long v7, v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Filesize of file doesn\'t match len of Fileheader. ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v12

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v14

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v16

    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v18

    new-instance v2, Lentagged/audioformats/asf/data/FileHeader;

    invoke-direct/range {v2 .. v19}, Lentagged/audioformats/asf/data/FileHeader;-><init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V

    :cond_1
    return-object v2
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/FileHeader;
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
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/asf/io/FileHeaderReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/FileHeaderReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/FileHeaderReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
