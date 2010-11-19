.class public Lentagged/audioformats/ogg/util/OggTagField;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field private common:Z

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    iput-object p2, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    invoke-direct {p0}, Lentagged/audioformats/ogg/util/OggTagField;->checkCommon()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "="

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v4, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    aget-object v0, v1, v4

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lentagged/audioformats/ogg/util/OggTagField;->checkCommon()V

    return-void

    :cond_0
    const-string v1, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "ERRONEOUS"

    iput-object v1, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCommon()V
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "GENRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "TRACKNUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "COMMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "TRACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->common:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected copy([B[BI)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v2, v3}, Lentagged/audioformats/ogg/util/OggTagField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    const/4 v5, 0x3

    const/high16 v6, -0x100

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v5, 0x2

    const/high16 v6, 0xff

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v5, 0x1

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    invoke-virtual {p0, v0, v3, v7}, Lentagged/audioformats/ogg/util/OggTagField;->copy([B[BI)V

    add-int/lit8 v0, v7, 0x4

    invoke-virtual {p0, v1, v3, v0}, Lentagged/audioformats/ogg/util/OggTagField;->copy([B[BI)V

    array-length v0, v1

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x3d

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lentagged/audioformats/ogg/util/OggTagField;->copy([B[BI)V

    return-object v3
.end method

.method public isBinary(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OggTagFields cannot be changed to binary.\nbinary data should be stored elsewhere according to Vorbis_I_spec."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->common:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The encoding of OggTagFields cannot be changed.(specified to be UTF-8)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/ogg/util/OggTagField;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
