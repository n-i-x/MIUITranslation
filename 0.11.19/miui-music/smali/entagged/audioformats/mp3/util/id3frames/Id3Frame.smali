.class public abstract Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/generic/TagField;


# instance fields
.field protected flags:[B

.field protected version:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->version:B

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->createDefaultFlags()V

    return-void
.end method

.method public constructor <init>([BB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-eq p2, v0, :cond_0

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p2, v0, :cond_5

    :cond_0
    const/4 v0, 0x2

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_2
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_3
    new-array v1, v0, [B

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v0, p1

    :goto_1
    iput-byte p2, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->version:B

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->populate([B)V

    return-void

    :cond_5
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->createDefaultFlags()V

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    invoke-virtual {p0, v1, v0, v4}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->copy([B[BI)V

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    array-length v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->copy([B[BI)V

    goto :goto_1
.end method

.method private createDefaultFlags()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    aput-byte v2, v0, v2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    return-void
.end method


# virtual methods
.method protected abstract build()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected copy([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int v1, v0, p3

    aget-byte v2, p1, v0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;

    :try_start_0
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->build()[B

    move-result-object v0

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->build()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "UTF-16"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, -0x1

    aput-byte v0, v1, v3

    const/4 v0, -0x2

    aput-byte v0, v1, v4

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "UTF-16BE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    :goto_1
    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1
.end method

.method public getFlags()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method protected getIdBytes()[B
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->build()[B

    move-result-object v0

    return-object v0
.end method

.method protected getSize(I)[B
    .locals 3

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->version:B

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->getSyncSafe(I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method protected getString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x1

    const/4 v3, 0x2

    const-string v0, "UTF-16"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int v0, p2, p3

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    if-nez v0, :cond_7

    add-int v0, p2, p3

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    if-nez v0, :cond_7

    move v0, v3

    :goto_0
    aget-byte v1, p1, p2

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    sub-int v3, p3, v3

    sub-int v0, v3, v0

    const-string v3, "UTF-16BE"

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    aget-byte v1, p1, p2

    if-ne v1, v4, :cond_1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    sub-int v3, p3, v3

    sub-int v0, v3, v0

    const-string v3, "UTF-16LE"

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    sub-int v0, p3, v0

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p1, p2, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "UTF-16BE"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int v0, p2, p3

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    if-nez v0, :cond_6

    add-int v0, p2, p3

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    if-nez v0, :cond_6

    move v0, v3

    :goto_2
    if-eqz p3, :cond_3

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_5

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    add-int v0, p2, p3

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    sub-int v0, p3, v0

    invoke-direct {v1, p1, p2, v0, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_0
.end method

.method protected indexOfFirstNull([BI)I
    .locals 2

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isBinary(Z)V
    .locals 0

    return-void
.end method

.method public abstract isBinary()Z
.end method

.method public abstract isCommon()Z
.end method

.method protected abstract populate([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
