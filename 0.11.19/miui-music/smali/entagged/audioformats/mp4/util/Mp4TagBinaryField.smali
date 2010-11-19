.class public Lentagged/audioformats/mp4/util/Mp4TagBinaryField;
.super Lentagged/audioformats/mp4/util/Mp4TagField;


# instance fields
.field protected dataBytes:[B

.field protected isBinary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    return-void
.end method


# virtual methods
.method protected build([B)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x10

    const/4 v0, 0x3

    invoke-static {p1, v6, v0}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    sub-int v1, v0, v5

    new-array v1, v1, [B

    iput-object v1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    sub-int v3, v1, v5

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    return-void

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2

    instance-of v1, p1, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    check-cast p1, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    invoke-virtual {p1}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary()Z

    move-result v1

    iput-boolean v1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    return-object v0
.end method

.method public getRawContent()[B
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x18

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {v2}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v2

    invoke-static {v2, v1, v6}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    add-int/lit8 v2, v6, 0x4

    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    const-string v3, "data"

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    new-array v3, v8, [B

    aput-byte v6, v3, v6

    aput-byte v6, v3, v7

    const/4 v4, 0x2

    aput-byte v6, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-static {v3, v1, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    new-array v3, v8, [B

    fill-array-data v3, :array_0

    invoke-static {v3, v1, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    return-object v1

    :cond_0
    move v5, v7

    goto :goto_0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isBinary()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    return-void
.end method
