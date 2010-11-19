.class public Lentagged/audioformats/ape/util/ApeTagTextField;
.super Lentagged/audioformats/ape/util/ApeTagField;

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/ape/util/ApeTagField;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/ape/util/ApeTagTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/ape/util/ApeTagTextField;

    invoke-virtual {p1}, Lentagged/audioformats/ape/util/ApeTagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getRawContent()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/ApeTagTextField;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/ape/util/ApeTagTextField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/ApeTagTextField;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lentagged/audioformats/ape/util/ApeTagTextField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    array-length v4, v1

    invoke-virtual {p0, v4}, Lentagged/audioformats/ape/util/ApeTagTextField;->getSize(I)[B

    move-result-object v4

    invoke-virtual {p0, v4, v2, v5}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    add-int/lit8 v4, v5, 0x4

    invoke-virtual {p0, v3, v2, v4}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    add-int/lit8 v3, v4, 0x4

    invoke-virtual {p0, v0, v2, v3}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    array-length v1, v1

    add-int/2addr v0, v1

    return-object v2

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method
