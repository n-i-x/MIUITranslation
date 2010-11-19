.class public Lentagged/audioformats/asf/data/ContentDescription;
.super Lentagged/audioformats/asf/data/Chunk;


# instance fields
.field private author:Ljava/lang/String;

.field private copyRight:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lentagged/audioformats/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    array-length v3, v2

    new-array v3, v3, [[B

    move v4, v8

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v8

    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v2, v1

    add-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Content Description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Title      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Author     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Copyright  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Rating     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    return-void
.end method

.method public setCopyRight(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    return-void
.end method
