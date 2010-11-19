.class public Lentagged/audioformats/ape/MonkeyFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;


# instance fields
.field private ape:Lentagged/audioformats/ape/util/ApeTagWriter;

.field private mp3tw:Lentagged/audioformats/mp3/Mp3FileWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    new-instance v0, Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-direct {v0}, Lentagged/audioformats/ape/util/ApeTagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ape/MonkeyFileWriter;->ape:Lentagged/audioformats/ape/util/ApeTagWriter;

    new-instance v0, Lentagged/audioformats/mp3/Mp3FileWriter;

    invoke-direct {v0}, Lentagged/audioformats/mp3/Mp3FileWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ape/MonkeyFileWriter;->mp3tw:Lentagged/audioformats/mp3/Mp3FileWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/ape/MonkeyFileWriter;->mp3tw:Lentagged/audioformats/mp3/Mp3FileWriter;

    invoke-virtual {v0, p1, p2}, Lentagged/audioformats/mp3/Mp3FileWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/MonkeyFileWriter;->ape:Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-virtual {v0, p2}, Lentagged/audioformats/ape/util/ApeTagWriter;->delete(Ljava/io/RandomAccessFile;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/ape/MonkeyFileWriter;->ape:Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ape/util/ApeTagWriter;->delete(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/ape/MonkeyFileWriter;->ape:Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lentagged/audioformats/ape/util/ApeTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
