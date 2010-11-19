.class public Lentagged/audioformats/asf/data/AsfHeader;
.super Lentagged/audioformats/asf/data/Chunk;


# instance fields
.field private final chunkCount:J

.field private contentDescription:Lentagged/audioformats/asf/data/ContentDescription;

.field private encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;

.field private extendedContentDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;

.field private fileHeader:Lentagged/audioformats/asf/data/FileHeader;

.field private streamBitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

.field private streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

.field private unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;J)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    iput-wide p4, p0, Lentagged/audioformats/asf/data/AsfHeader;->chunkCount:J

    new-array v0, v1, [Lentagged/audioformats/asf/data/StreamChunk;

    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    new-array v0, v1, [Lentagged/audioformats/asf/data/Chunk;

    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    return-void
.end method


# virtual methods
.method public addStreamChunk(Lentagged/audioformats/asf/data/StreamChunk;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lentagged/audioformats/asf/data/StreamChunk;

    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    iget-object v2, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    :cond_1
    return-void
.end method

.method public addUnspecifiedChunk(Lentagged/audioformats/asf/data/Chunk;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lentagged/audioformats/asf/data/Chunk;

    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    iget-object v2, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    :cond_1
    return-void
.end method

.method public getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunkCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v0

    instance-of v3, v0, Lentagged/audioformats/asf/data/AudioStreamChunk;

    if-eqz v3, :cond_1

    check-cast v0, Lentagged/audioformats/asf/data/AudioStreamChunk;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getChunkCount()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->chunkCount:J

    return-wide v0
.end method

.method public getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->contentDescription:Lentagged/audioformats/asf/data/ContentDescription;

    return-object v0
.end method

.method public getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;

    return-object v0
.end method

.method public getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->extendedContentDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;

    return-object v0
.end method

.method public getFileHeader()Lentagged/audioformats/asf/data/FileHeader;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->fileHeader:Lentagged/audioformats/asf/data/FileHeader;

    return-object v0
.end method

.method public getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamBitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    return-object v0
.end method

.method public getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStreamChunkCount()I
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    array-length v0, v0

    return v0
.end method

.method public getUnspecifiedChunk(I)Lentagged/audioformats/asf/data/Chunk;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUnspecifiedChunkCount()I
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    array-length v0, v0

    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\nASF Chunk\n"

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Contains: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getChunkCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" chunks\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunkCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Lentagged/audioformats/asf/data/ContentDescription;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->contentDescription:Lentagged/audioformats/asf/data/ContentDescription;

    return-void
.end method

.method public setEncodingChunk(Lentagged/audioformats/asf/data/EncodingChunk;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;

    return-void
.end method

.method public setExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->extendedContentDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;

    return-void
.end method

.method public setFileHeader(Lentagged/audioformats/asf/data/FileHeader;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->fileHeader:Lentagged/audioformats/asf/data/FileHeader;

    return-void
.end method

.method public setStreamBitratePropertiesChunk(Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamBitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    return-void
.end method
