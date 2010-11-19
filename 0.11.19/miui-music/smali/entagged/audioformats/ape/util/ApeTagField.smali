.class public abstract Lentagged/audioformats/ape/util/ApeTagField;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/generic/TagField;


# instance fields
.field private binary:Z

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lentagged/audioformats/ape/util/ApeTagField;->binary:Z

    return-void
.end method


# virtual methods
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

.method public abstract copyContent(Lentagged/audioformats/generic/TagField;)V
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

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRawContent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected getSize(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    const/high16 v2, -0x100

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0xff

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 0

    iput-boolean p1, p0, Lentagged/audioformats/ape/util/ApeTagField;->binary:Z

    return-void
.end method

.method public isBinary()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->binary:Z

    return v0
.end method

.method public isCommon()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Artist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Genre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Year"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagField;->id:Ljava/lang/String;

    const-string v1, "Comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
