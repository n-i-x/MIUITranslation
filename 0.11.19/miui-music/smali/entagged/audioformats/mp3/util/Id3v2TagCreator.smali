.class public Lentagged/audioformats/mp3/util/Id3v2TagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;


# static fields
#the value of this static final field might be set in the static constructor
.field static final $assertionsDisabled:Z = false

.field public static final DEFAULT_PADDING:I = 0xfa0

.field static class$entagged$audioformats$mp3$util$Id3v2TagCreator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->class$entagged$audioformats$mp3$util$Id3v2TagCreator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "entagged.audioformats.mp3.util.Id3v2TagCreator"

    invoke-static {v0}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->class$entagged$audioformats$mp3$util$Id3v2TagCreator:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->class$entagged$audioformats$mp3$util$Id3v2TagCreator:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTagCreator;-><init>()V

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

.method private createID3Flags([Z)B
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-boolean v0, p1, v1

    if-ne v0, v2, :cond_3

    add-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    :goto_0
    aget-boolean v1, p1, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_0
    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_1
    const/4 v1, 0x3

    aget-boolean v1, p1, v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getSyncSafe(I)[B
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    sget-boolean v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-array v0, v5, [B

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_1

    sub-int v2, v4, v1

    mul-int/lit8 v2, v2, 0x7

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x49

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-array v0, v4, [Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v3

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    invoke-direct {p0, v0}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->createID3Flags([Z)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    sub-int v1, p4, v1

    add-int/2addr v1, p5

    invoke-static {v1}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->getSyncSafe(I)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    aget-boolean v0, v0, v3

    if-ne v0, v3, :cond_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-ge v0, p5, :cond_2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/mp3/Id3v2Tag;

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/mp3/Id3v2Tag;

    invoke-direct {v0}, Lentagged/audioformats/mp3/Id3v2Tag;-><init>()V

    invoke-virtual {v0, p1}, Lentagged/audioformats/mp3/Id3v2Tag;->merge(Lentagged/audioformats/Tag;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
