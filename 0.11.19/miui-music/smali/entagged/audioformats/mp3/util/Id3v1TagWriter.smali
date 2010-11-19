.class public Lentagged/audioformats/mp3/util/Id3v1TagWriter;
.super Ljava/lang/Object;


# instance fields
.field private tc:Lentagged/audioformats/mp3/util/Id3v1TagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/mp3/util/Id3v1TagCreator;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v1TagCreator;

    return-void
.end method

.method private tagExists(Ljava/io/RandomAccessFile;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x80

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v1TagCreator;

    invoke-virtual {v1, p1}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p2}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method
