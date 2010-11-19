.class public Lentagged/audioformats/asf/data/StreamChunk;
.super Lentagged/audioformats/asf/data/Chunk;


# instance fields
.field private contentEncrypted:Z

.field private streamNumber:I

.field private streamSpecificDataSize:J

.field private timeOffset:J

.field private typeSpecificDataSize:J


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getStreamNumber()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/asf/data/StreamChunk;->streamNumber:I

    return v0
.end method

.method public getStreamSpecificDataSize()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/StreamChunk;->streamSpecificDataSize:J

    return-wide v0
.end method

.method public getTimeOffset()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/StreamChunk;->timeOffset:J

    return-wide v0
.end method

.method public getTypeSpecificDataSize()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/StreamChunk;->typeSpecificDataSize:J

    return-wide v0
.end method

.method public isContentEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/asf/data/StreamChunk;->contentEncrypted:Z

    return v0
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

    const-string v3, "Stream Data:"

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

    const-string v2, "   Stream number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/StreamChunk;->getStreamNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Type specific data size  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/StreamChunk;->getTypeSpecificDataSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Stream specific data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/StreamChunk;->getStreamSpecificDataSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Time Offset              : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/StreamChunk;->getTimeOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Content Encryption       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/StreamChunk;->isContentEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

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

.method public setContentEncrypted(Z)V
    .locals 0

    iput-boolean p1, p0, Lentagged/audioformats/asf/data/StreamChunk;->contentEncrypted:Z

    return-void
.end method

.method public setStreamNumber(I)V
    .locals 0

    iput p1, p0, Lentagged/audioformats/asf/data/StreamChunk;->streamNumber:I

    return-void
.end method

.method public setStreamSpecificDataSize(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/StreamChunk;->streamSpecificDataSize:J

    return-void
.end method

.method public setTimeOffset(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/StreamChunk;->timeOffset:J

    return-void
.end method

.method public setTypeSpecificDataSize(J)V
    .locals 0

    iput-wide p1, p0, Lentagged/audioformats/asf/data/StreamChunk;->typeSpecificDataSize:J

    return-void
.end method
