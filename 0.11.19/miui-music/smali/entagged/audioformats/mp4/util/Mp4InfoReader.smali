.class public Lentagged/audioformats/mp4/util/Mp4InfoReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4InfoReader;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4InfoReader;-><init>()V

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/home/kikidonk/test.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

    return-void
.end method

.method private seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p2, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    :goto_0
    invoke-virtual {p2}, Lentagged/audioformats/mp4/util/Mp4Box;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p2, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v0}, Lentagged/audioformats/EncodingInfo;-><init>()V

    new-instance v1, Lentagged/audioformats/mp4/util/Mp4Box;

    invoke-direct {v1}, Lentagged/audioformats/mp4/util/Mp4Box;-><init>()V

    const-string v2, "moov"

    invoke-direct {p0, p1, v1, v2}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    const-string v2, "mvhd"

    invoke-direct {p0, p1, v1, v2}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v1

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lentagged/audioformats/mp4/util/Mp4MvhdBox;

    invoke-direct {v2, v1}, Lentagged/audioformats/mp4/util/Mp4MvhdBox;-><init>([B)V

    invoke-virtual {v2}, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/EncodingInfo;->setLength(I)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object v0
.end method
