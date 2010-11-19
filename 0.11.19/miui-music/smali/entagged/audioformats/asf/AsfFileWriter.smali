.class public Lentagged/audioformats/asf/AsfFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    return-void
.end method

.method private copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x2000

    const/4 v6, 0x0

    new-array v0, v7, [B

    const-wide/16 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x2000

    add-long/2addr v3, v1

    cmp-long v3, v3, p3

    if-lez v3, :cond_0

    sub-long v3, p3, v1

    long-to-int v3, v3

    :goto_1
    invoke-virtual {p1, v0, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-lez v3, :cond_1

    int-to-long v4, v3

    add-long/2addr v1, v4

    invoke-virtual {p2, v0, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createModifiedCopy(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/AsfHeader;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object/from16 v0, p3

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v5, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lentagged/audioformats/asf/AsfFileWriter;->copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lentagged/audioformats/asf/AsfFileWriter;->getOrderedChunks(Lentagged/audioformats/asf/data/AsfHeader;)[Lentagged/audioformats/asf/data/Chunk;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getChunkCount()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v12

    if-nez v12, :cond_8

    invoke-direct/range {p0 .. p1}, Lentagged/audioformats/asf/AsfFileWriter;->isExtendedContentDescriptionMandatory(Lentagged/audioformats/Tag;)Z

    move-result v12

    if-eqz v12, :cond_8

    if-nez p5, :cond_8

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->createNewExtendedContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v12

    invoke-virtual {v12}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    add-long/2addr v6, v12

    move-wide v15, v8

    move-wide v8, v6

    move-wide v6, v15

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v12

    if-nez v12, :cond_0

    invoke-direct/range {p0 .. p1}, Lentagged/audioformats/asf/AsfFileWriter;->isContentdescriptionMandatory(Lentagged/audioformats/Tag;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-nez p5, :cond_0

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->createNewContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v12

    invoke-virtual {v12}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    add-long/2addr v8, v12

    :cond_0
    const/4 v12, 0x0

    move v15, v12

    move-wide/from16 v16, v10

    move-wide v11, v8

    move-wide v9, v6

    move v6, v15

    move-wide/from16 v7, v16

    :goto_1
    array-length v13, v5

    if-ge v6, v13, :cond_7

    aget-object v13, v5, v6

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v14

    if-ne v13, v14, :cond_2

    if-eqz p5, :cond_1

    const-wide/16 v13, 0x1

    sub-long/2addr v9, v13

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v13

    invoke-virtual {v13}, Lentagged/audioformats/asf/data/ContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    sub-long/2addr v11, v13

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->createNewContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v13

    invoke-virtual {v13}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v14

    invoke-virtual {v14}, Lentagged/audioformats/asf/data/ContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    goto :goto_2

    :cond_2
    aget-object v13, v5, v6

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v14

    if-ne v13, v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/AsfFileWriter;->deleteExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;Lentagged/audioformats/Tag;)Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz p5, :cond_4

    :cond_3
    const-wide/16 v13, 0x1

    sub-long/2addr v9, v13

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v13

    invoke-virtual {v13}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    sub-long/2addr v11, v13

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->createNewExtendedContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v13

    invoke-virtual {v13}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v14

    invoke-virtual {v14}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    goto :goto_2

    :cond_5
    sget-object v13, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    aget-object v14, v5, v6

    invoke-virtual {v14}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    :cond_6
    aget-object v13, v5, v6

    invoke-virtual {v13}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v13

    move-object/from16 v0, p3

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    aget-object v13, v5, v6

    invoke-virtual {v13}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide v3, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lentagged/audioformats/asf/AsfFileWriter;->copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getChunckEnd()J

    move-result-wide v5

    move-object/from16 v0, p3

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    sub-long/2addr v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lentagged/audioformats/asf/AsfFileWriter;->copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V

    const-wide/16 v5, 0x18

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->write16UINT(JLjava/io/RandomAccessFile;)I

    const-wide/16 v5, 0x28

    add-long/2addr v5, v7

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v11

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->write32UINT(JLjava/io/RandomAccessFile;)I

    const-wide/16 v5, 0x10

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v11

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/AsfFileWriter;->write32UINT(JLjava/io/RandomAccessFile;)I

    return-void

    :cond_8
    move-wide v15, v8

    move-wide v8, v6

    move-wide v6, v15

    goto/16 :goto_0
.end method

.method private createNewContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-static {p1}, Lentagged/audioformats/asf/util/TagConverter;->createContentDescription(Lentagged/audioformats/Tag;)Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lentagged/audioformats/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lentagged/audioformats/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lentagged/audioformats/asf/data/ContentDescription;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance v3, Lentagged/audioformats/asf/data/Chunk;

    sget-object v4, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    array-length v2, v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v4, v0, v1, v2}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object v3
.end method

.method private createNewExtendedContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    if-nez p2, :cond_0

    new-instance v2, Lentagged/audioformats/asf/data/ExtendedContentDescription;

    invoke-direct {v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>()V

    :goto_0
    invoke-static {p1, v2}, Lentagged/audioformats/asf/util/TagConverter;->assignCommonTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    invoke-static {p1, v2}, Lentagged/audioformats/asf/util/TagConverter;->assignOptionalTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance v3, Lentagged/audioformats/asf/data/Chunk;

    sget-object v4, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    array-length v2, v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v4, v0, v1, v2}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object v3

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method private deleteExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;Lentagged/audioformats/Tag;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashSet;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "WM/Genre"

    aput-object v2, v0, v4

    const-string v2, "WM/GenreID"

    aput-object v2, v0, v5

    const/4 v2, 0x2

    const-string v3, "WM/TrackNumber"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "WM/AlbumTitle"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "WM/Year"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lentagged/audioformats/asf/AsfFileWriter;->isExtendedContentDescriptionMandatory(Lentagged/audioformats/Tag;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v5

    :goto_1
    return v0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private getOrderedChunks(Lentagged/audioformats/asf/data/AsfHeader;)[Lentagged/audioformats/asf/data/Chunk;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    :goto_0
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getUnspecifiedChunkCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/AsfHeader;->getUnspecifiedChunk(I)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunkCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lentagged/audioformats/asf/data/Chunk;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lentagged/audioformats/asf/data/Chunk;

    new-instance v0, Lentagged/audioformats/asf/util/ChunkPositionComparator;

    invoke-direct {v0}, Lentagged/audioformats/asf/util/ChunkPositionComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method private isContentdescriptionMandatory(Lentagged/audioformats/Tag;)Z
    .locals 1

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtendedContentDescriptionMandatory(Lentagged/audioformats/Tag;)Z
    .locals 1

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private write16UINT(JLjava/io/RandomAccessFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 v0, 0x2

    return v0
.end method

.method private write32UINT(JLjava/io/RandomAccessFile;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-long v0, p1, v3

    long-to-int v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-long/2addr v0, v3

    long-to-int v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-long/2addr v0, v3

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header is null, so file couldn\'t be read properly. (Interpretation of data, not file access rights.)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    new-instance v1, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v1}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lentagged/audioformats/asf/AsfFileWriter;->createModifiedCopy(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/AsfHeader;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot modify tag because exception occured:\n   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header is null, so file couldn\'t be read properly. (Interpretation of data, not file access rights.)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lentagged/audioformats/asf/AsfFileWriter;->createModifiedCopy(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/AsfHeader;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot modify tag because exception occured:\n   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
