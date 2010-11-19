.class public Lentagged/audioformats/flac/util/FlacTagReader;
.super Ljava/lang/Object;


# instance fields
.field private oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    return-void
.end method

.method private handleVorbisComment(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-virtual {v2, p2}, Lentagged/audioformats/ogg/util/OggTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Tag length do not match with flac comment data length"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v6, 0x4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "Error: File empty"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v6, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "fLaC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "fLaC Header not found, not a flac file"

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-array v0, v6, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;-><init>([B)V

    invoke-virtual {v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBlockType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock()Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1, p1}, Lentagged/audioformats/flac/util/FlacTagReader;->handleVorbisComment(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v1, "FLAC Tag could not be found or read.."

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
