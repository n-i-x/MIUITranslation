.class public final Lentagged/audioformats/asf/data/ContentDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final COMMON_FIELD_IDS:Ljava/util/HashSet; = null

.field public static final ID_ALBUM:Ljava/lang/String; = "WM/AlbumTitle"

.field public static final ID_ARTIST:Ljava/lang/String; = "WM/AlbumArtist"

.field public static final ID_GENRE:Ljava/lang/String; = "WM/Genre"

.field public static final ID_GENREID:Ljava/lang/String; = "WM/GenreID"

.field public static final ID_TRACKNUMBER:Ljava/lang/String; = "WM/TrackNumber"

.field public static final ID_YEAR:Ljava/lang/String; = "WM/Year"

.field public static final TYPE_BINARY:I = 0x1

.field public static final TYPE_BOOLEAN:I = 0x2

.field public static final TYPE_DWORD:I = 0x3

.field public static final TYPE_QWORD:I = 0x4

.field public static final TYPE_STRING:I = 0x0

.field public static final TYPE_WORD:I = 0x5


# instance fields
.field protected content:[B

.field private descriptorType:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/AlbumTitle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/AlbumArtist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/Genre"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/GenreID"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/TrackNumber"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/Year"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->name:Ljava/lang/String;

    iput p2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->createCopy()Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lentagged/audioformats/asf/data/ContentDescriptor;

    if-eqz v1, :cond_0

    check-cast p1, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public createCopy()Lentagged/audioformats/asf/data/ContentDescriptor;
    .locals 3

    new-instance v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getRawData()[B

    move-result-object v1

    iput-object v1, v0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lentagged/audioformats/asf/data/ContentDescriptor;

    if-eqz v0, :cond_2

    if-ne p1, p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    iget v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    iget-object v1, p1, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getBoolean()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v1, v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The current type doesn\'t allow an interpretation as a number."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The stored data cannot represent the type of current object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v7, v3

    move-wide v3, v0

    move v0, v7

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    aget-byte v1, v1, v0

    mul-int/lit8 v5, v0, 0x8

    shl-int/2addr v1, v5

    int-to-long v5, v1

    or-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-wide v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRawData()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    iget-object v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current type is not known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "binary data"

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    const-string v3, "UTF-16LE"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return v0
.end method

.method public isCommon()Z
    .locals 2

    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBinaryValue([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many bytes. 65535 is maximum."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    const/4 v0, 0x1

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void
.end method

.method public setBooleanValue(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    aput-byte v1, v0, v2

    aput-byte v2, v0, v3

    aput-byte v2, v0, v4

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    iput v4, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setDWordValue(J)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    const/4 v0, 0x3

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void
.end method

.method public setQWordValue(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    const/4 v0, 0x4

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const v2, 0xffff

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte representation of String in \"UTF-16LE\" is to great. (Maximum is 65535 Bytes)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-array v0, v3, [B

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    :goto_0
    iput v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void

    :cond_0
    :try_start_1
    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setWordValue(I)V
    .locals 3

    int-to-long v0, p1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    const/4 v0, 0x5

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "String: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Binary: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Boolean: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DWORD: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "QWORD:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WORD:"

    aput-object v3, v1, v2

    iget v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
