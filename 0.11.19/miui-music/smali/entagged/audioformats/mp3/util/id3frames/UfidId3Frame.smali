.class public Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/Id3Frame;


# instance fields
.field private identifier:[B

.field private ownerId:Ljava/lang/String;


# direct methods
.method public constructor <init>([BB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>([BB)V

    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getIdBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v1, v5}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    add-int/lit8 v2, v5, 0x4

    array-length v3, v1

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getSize(I)[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    invoke-virtual {p0, v3, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    array-length v0, v0

    add-int/2addr v0, v2

    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    invoke-virtual {p0, v2, v1, v0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    return-object v1
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2

    instance-of v1, p1, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getIdentifier()[B

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "UFID"

    return-object v0
.end method

.method public getIdentifier()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCommon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->indexOfFirstNull([BI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v2, v2

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v3, v3

    sub-int v3, v0, v3

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    move v1, v5

    :goto_1
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v2, v2

    array-length v3, p1

    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    new-array v1, v5, [B

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UFID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
