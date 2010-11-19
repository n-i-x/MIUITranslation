.class public Lentagged/audioformats/mp4/util/Mp4TagReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMp4Field(Ljava/lang/String;[B)Lentagged/audioformats/mp4/util/Mp4TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "trkn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;

    invoke-direct {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;-><init>(Ljava/lang/String;[B)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "\u00a9ART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9alb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9nam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9cmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9gen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9too"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9wrt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    invoke-direct {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_3
    const-string v0, "covr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagCoverField;

    invoke-direct {v0, p2}, Lentagged/audioformats/mp4/util/Mp4TagCoverField;-><init>([B)V

    goto :goto_0

    :cond_4
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    invoke-direct {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;-><init>(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4TagReader;-><init>()V

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/home/kikidonk/test.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp4/util/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp4/Mp4Tag;

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
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp4/Mp4Tag;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v7, 0x8

    new-instance v0, Lentagged/audioformats/mp4/Mp4Tag;

    invoke-direct {v0}, Lentagged/audioformats/mp4/Mp4Tag;-><init>()V

    new-instance v1, Lentagged/audioformats/mp4/util/Mp4Box;

    invoke-direct {v1}, Lentagged/audioformats/mp4/util/Mp4Box;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [B

    const-string v3, "moov"

    invoke-direct {p0, p1, v1, v3}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    const-string v3, "udta"

    invoke-direct {p0, p1, v1, v3}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    const-string v3, "meta"

    invoke-direct {p0, p1, v1, v3}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    aget-byte v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotReadException;

    invoke-direct {v0}, Lentagged/audioformats/exceptions/CannotReadException;-><init>()V

    throw v0

    :cond_0
    const-string v2, "ilst"

    invoke-direct {p0, p1, v1, v2}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v2

    sub-int/2addr v2, v7

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    new-array v4, v7, [B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v1, v4}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v4

    sub-int/2addr v4, v7

    new-array v5, v4, [B

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lentagged/audioformats/mp4/util/Mp4TagReader;->createMp4Field(Ljava/lang/String;[B)Lentagged/audioformats/mp4/util/Mp4TagField;

    move-result-object v5

    invoke-virtual {v0, v5}, Lentagged/audioformats/mp4/Mp4Tag;->add(Lentagged/audioformats/generic/TagField;)V

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object v0
.end method
