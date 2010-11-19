.class public Lentagged/audioformats/flac/util/FlacTagWriter;
.super Ljava/lang/Object;


# instance fields
.field private metadataBlockApplication:Ljava/util/Vector;

.field private metadataBlockCueSheet:Ljava/util/Vector;

.field private metadataBlockPadding:Ljava/util/Vector;

.field private metadataBlockSeekTable:Ljava/util/Vector;

.field private reader:Lentagged/audioformats/flac/util/FlacTagReader;

.field private tc:Lentagged/audioformats/flac/util/FlacTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    new-instance v0, Lentagged/audioformats/flac/util/FlacTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    new-instance v0, Lentagged/audioformats/flac/util/FlacTagReader;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->reader:Lentagged/audioformats/flac/util/FlacTagReader;

    return-void
.end method

.method private computeAvailableRoom()I
    .locals 4

    const/4 v3, 0x0

    move v1, v3

    move v2, v3

    :goto_0
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_2
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_3
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    return v2
.end method

.method private computeNeededRoom()I
    .locals 4

    const/4 v3, 0x0

    move v1, v3

    move v2, v3

    :goto_0
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_2
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    return v2
.end method

.method private handleApplication(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataApplication;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataApplication;-><init>([B)V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    new-instance v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v2, p1, v1}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleCueSheet(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;-><init>([B)V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    new-instance v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v2, p1, v1}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handlePadding(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v1

    invoke-direct {v0, v1}, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;-><init>(I)V

    iget-object v1, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    new-instance v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v2, p1, v0}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleSeekTable(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataSeekTable;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataSeekTable;-><init>([B)V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    new-instance v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v2, p1, v1}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private skipBlock(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->reader:Lentagged/audioformats/flac/util/FlacTagReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/flac/util/FlacTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v1}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {v0}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lentagged/audioformats/ogg/OggTag;->setVendor(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1, p1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v0}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    const/4 v6, 0x0

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    new-array v0, v2, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "fLaC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v1, "This is not a FLAC file"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v6

    :goto_0
    if-nez v0, :cond_1

    new-array v0, v2, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;-><init>([B)V

    invoke-virtual {v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBlockType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->skipBlock(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    :goto_1
    invoke-virtual {v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock()Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handlePadding(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handlePadding(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handleApplication(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handleSeekTable(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handleCueSheet(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lentagged/audioformats/flac/util/FlacTagWriter;->computeAvailableRoom()I

    move-result v2

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    invoke-virtual {v0, p1}, Lentagged/audioformats/flac/util/FlacTagCreator;->getTagLength(Lentagged/audioformats/Tag;)I

    move-result v0

    invoke-direct {p0}, Lentagged/audioformats/flac/util/FlacTagWriter;->computeNeededRoom()I

    move-result v1

    add-int/2addr v1, v0

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    if-lt v2, v1, :cond_5

    const-wide/16 v3, 0x2a

    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    move v3, v6

    :goto_2
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_3
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_4
    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v3, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    sub-int v1, v2, v1

    invoke-virtual {v3, p1, v1}, Lentagged/audioformats/flac/util/FlacTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_5
    return-void

    :cond_5
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/16 v0, 0x2a

    new-array v3, v0, [B

    invoke-virtual {p2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v0, v2, 0x2a

    int-to-long v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p3, v3}, Ljava/io/RandomAccessFile;->write([B)V

    move v3, v6

    :goto_6
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_6
    move v3, v6

    :goto_7
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v6

    :goto_8
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    const/16 v3, 0xfa0

    invoke-virtual {v2, p1, v3}, Lentagged/audioformats/flac/util/FlacTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
