.class public Lentagged/audioformats/ape/util/ApeTagBinaryField;
.super Lentagged/audioformats/ape/util/ApeTagField;


# instance fields
.field private content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/ape/util/ApeTagField;-><init>(Ljava/lang/String;Z)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    aget-byte v2, p2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/ape/util/ApeTagBinaryField;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/ape/util/ApeTagBinaryField;

    invoke-virtual {p1}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getContent()[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    :cond_0
    return-void
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    return-object v0
.end method

.method public getRawContent()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    iget-object v3, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v3, v3

    invoke-virtual {p0, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getSize(I)[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, v4}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    add-int/lit8 v3, v4, 0x4

    invoke-virtual {p0, v2, v1, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    add-int/lit8 v2, v3, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    invoke-virtual {p0, v2, v1, v0}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    iget-object v2, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v2, v2

    add-int/2addr v0, v2

    return-object v1

    nop

    :array_0
    .array-data 0x1
        0x2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binary field"

    return-object v0
.end method
