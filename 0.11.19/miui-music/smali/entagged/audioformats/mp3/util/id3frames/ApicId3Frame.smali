.class public Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;


# instance fields
.field private data:[B

.field private mime:Ljava/lang/String;

.field private pictureType:B

.field private unsupportedState:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;B[B)V
    .locals 1

    const-string v0, "APIC"

    invoke-direct {p0, v0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    iput-object p2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    iput-byte p3, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    iput-object p4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    return-void
.end method

.method public constructor <init>([BB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "APIC"

    invoke-direct {p0, v0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getIdBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    add-int/lit8 v3, v3, 0x4

    array-length v4, v2

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getSize(I)[B

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    invoke-virtual {p0, v4, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    iget-byte v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    array-length v1, v1

    add-int/2addr v1, v3

    iget-byte v3, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    array-length v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    invoke-virtual {p0, v1, v2, v0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2

    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copyContent(Lentagged/audioformats/generic/TagField;)V

    instance-of v1, p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    move-object v1, v0

    iget-boolean v1, v1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    if-nez v1, :cond_1

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getPictureType()B

    move-result v1

    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    iget-object v1, p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()B
    .locals 1

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    return v0
.end method

.method public getPictureTypeAsString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Other"

    goto :goto_0

    :pswitch_1
    const-string v0, "32x32 pixels file icon"

    goto :goto_0

    :pswitch_2
    const-string v0, "Other file icon"

    goto :goto_0

    :pswitch_3
    const-string v0, "Cover (front)"

    goto :goto_0

    :pswitch_4
    const-string v0, "Cover (back)"

    goto :goto_0

    :pswitch_5
    const-string v0, "Leaflet page"

    goto :goto_0

    :pswitch_6
    const-string v0, "Media (e.g. lable side of CD)"

    goto :goto_0

    :pswitch_7
    const-string v0, "Lead artist/lead performer/soloist"

    goto :goto_0

    :pswitch_8
    const-string v0, "Artist/performer"

    goto :goto_0

    :pswitch_9
    const-string v0, "Conductor"

    goto :goto_0

    :pswitch_a
    const-string v0, "Band/Orchestra"

    goto :goto_0

    :pswitch_b
    const-string v0, "Composer"

    goto :goto_0

    :pswitch_c
    const-string v0, "Lyricist/text writer"

    goto :goto_0

    :pswitch_d
    const-string v0, "Recording Location"

    goto :goto_0

    :pswitch_e
    const-string v0, "During recording"

    goto :goto_0

    :pswitch_f
    const-string v0, "During performance"

    goto :goto_0

    :pswitch_10
    const-string v0, "Movie/video screen capture"

    goto :goto_0

    :pswitch_11
    const-string v0, "A bright coloured fish"

    goto :goto_0

    :pswitch_12
    const-string v0, "Illustration"

    goto :goto_0

    :pswitch_13
    const-string v0, "Band/artist logotype"

    goto :goto_0

    :pswitch_14
    const-string v0, "Publisher/Studio logotype"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-super {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v4, [B

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v0, v0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-ltz v0, :cond_0

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-le v0, v7, :cond_1

    :cond_0
    iput-byte v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    :cond_1
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->indexOfFirstNull([BI)I

    move-result v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v2, v2

    sub-int v2, v0, v2

    sub-int/2addr v2, v5

    const-string v3, "ISO-8859-1"

    invoke-virtual {p0, p1, v1, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->indexOfFirstNull([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    sub-int v0, v1, v0

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->content:Ljava/lang/String;

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-eq v0, v6, :cond_4

    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-ne v0, v7, :cond_6

    :cond_4
    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-le v1, v0, :cond_5

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ApicId3Frame-> No space for picture data left."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getPictureTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
