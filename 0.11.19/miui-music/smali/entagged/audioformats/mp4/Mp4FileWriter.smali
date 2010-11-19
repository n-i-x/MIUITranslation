.class public Lentagged/audioformats/mp4/Mp4FileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;


# instance fields
.field private tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagWriter;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4TagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp4/Mp4FileWriter;->tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/mp4/Mp4FileWriter;->tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;

    invoke-virtual {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/mp4/Mp4FileWriter;->tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lentagged/audioformats/mp4/util/Mp4TagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
