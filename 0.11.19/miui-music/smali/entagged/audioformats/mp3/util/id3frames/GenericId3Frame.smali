.class public Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/Id3Frame;


# instance fields
.field private data:[B

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>([BB)V

    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 4

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->getIdBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    add-int/lit8 v1, v1, 0x4

    array-length v2, v0

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->getSize(I)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    return-object v0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->id:Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v2, v2

    add-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : No associated view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
