.class public Lentagged/audioformats/asf/data/ExtendedContentDescription;
.super Lentagged/audioformats/asf/data/Chunk;


# static fields
.field static final $assertionsDisabled:Z

.field static class$entagged$audioformats$asf$data$ExtendedContentDescription:Ljava/lang/Class;


# instance fields
.field private final descriptors:Ljava/util/ArrayList;

.field private indexMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->class$entagged$audioformats$asf$data$ExtendedContentDescription:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "entagged.audioformats.asf.data.ExtendedContentDescription"

    invoke-static {v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->class$entagged$audioformats$asf$data$ExtendedContentDescription:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->class$entagged$audioformats$asf$data$ExtendedContentDescription:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

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
.method public addDescriptor(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    .locals 5

    sget-boolean v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is already present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    .locals 2

    sget-boolean v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    :cond_1
    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addDescriptor(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    const-string v0, "WM/AlbumTitle"

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    const-string v0, "WM/AlbumArtist"

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;
    .locals 4

    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    iget-object v2, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/asf/data/ContentDescriptor;

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDescriptorCount()J
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDescriptors()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WM/Genre"

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "WM/GenreID"

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v2, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    const-string v0, "WM/TrackNumber"

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    const-string v0, "WM/Year"

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\nExtended Content Description:\n"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    iget-object v2, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v1, v3

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;
    .locals 2

    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    return-object v0
.end method
