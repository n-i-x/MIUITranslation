.class public Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/Id3Frame;

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field protected common:Z

.field protected content:Ljava/lang/String;

.field protected encoding:B

.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>()V

    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->checkCommon()V

    iput-object p2, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    sget-object v0, Lentagged/audioformats/mp3/Id3v2Tag;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>([BB)V

    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->checkCommon()V

    return-void
.end method

.method private checkCommon()V
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TCON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TRCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->common:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected build()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getIdBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    array-length v3, v1

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getSize(I)[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    invoke-virtual {p0, v3, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    iget-byte v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    return-object v1
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2

    instance-of v1, p1, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->setEncoding(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    const-string v2, "ISO-8859-1"

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    if-nez v0, :cond_0

    const-string v0, "ISO-8859-1"

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "UTF-16"

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "UTF-16BE"

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "UTF-8"

    goto :goto_0

    :cond_3
    const-string v0, "ISO-8859-1"

    move-object v0, v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->common:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected populate([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v0, v0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    if-eq v0, v4, :cond_0

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput-byte v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    :goto_0
    return-void

    :cond_0
    const-string v0, "UTF-16"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0

    :cond_1
    const-string v0, "UTF-16BE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0

    :cond_2
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
