.class public Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# static fields
.field static final $assertionsDisabled:Z

.field static class$entagged$audioformats$mp3$util$id3frames$CommId3Frame:Ljava/lang/Class;


# instance fields
.field private lang:Ljava/lang/String;

.field private shortDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->class$entagged$audioformats$mp3$util$id3frames$CommId3Frame:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "entagged.audioformats.mp3.util.id3frames.CommId3Frame"

    invoke-static {v0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->class$entagged$audioformats$mp3$util$id3frames$CommId3Frame:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->class$entagged$audioformats$mp3$util$id3frames$CommId3Frame:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "COMM"

    invoke-direct {p0, v0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "COMM"

    invoke-direct {p0, v0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected build()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getIdBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    add-int/lit8 v3, v4, 0x4

    array-length v4, v1

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getSize(I)[B

    move-result-object v4

    invoke-virtual {p0, v4, v1, v3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    invoke-virtual {p0, v4, v1, v3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    iget-byte v4, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->encoding:B

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    array-length v0, v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v1, v0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    return-object v1
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2

    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copyContent(Lentagged/audioformats/generic/TagField;)V

    instance-of v1, p1, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getLangage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getCommentStart([BILjava/lang/String;)I
    .locals 2

    const-string v0, "UTF-16"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getLangage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    const-string v2, ""

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v3, ""

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v0, v0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->encoding:B

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    const-string v0, "XXX"

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    const-string v0, ""

    iput-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    const-string v0, ""

    iput-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getCommentStart([BILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v2, v2

    sub-int v2, v0, v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    sget-boolean v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getLangage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getShortDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
