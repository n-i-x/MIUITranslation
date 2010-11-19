.class public Lentagged/audioformats/wav/WavFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
