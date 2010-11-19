.class public Lentagged/audioformats/asf/util/Utils;
.super Ljava/lang/Object;


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStringLengthNullSafe(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xfffd

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\"UTF-16LE\" representation exceeds 65535 bytes. (Including zero term character)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static fillChars([CLjava/io/RandomAccessFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getBytes(JI)[B
    .locals 6

    new-array v0, p2, [B

    const/4 v1, 0x0

    move-wide v2, p0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;
    .locals 6

    const v5, 0x7fffffff

    const/16 v4, 0xe

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10000"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->add(II)V

    return-object v0
.end method

.method public static read7Bit(Ljava/io/RandomAccessFile;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x8

    new-array v0, v1, [B

    new-array v1, v1, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x7

    sub-int/2addr v3, v2

    aget-byte v4, v0, v2

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static readCharacterSizedString(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    :cond_0
    if-eqz v2, :cond_1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    :cond_1
    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid Data for current interpretation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lentagged/audioformats/asf/data/GUID;

    invoke-direct {v1, v0}, Lentagged/audioformats/asf/data/GUID;-><init>([I)V

    return-object v1
.end method

.method public static readUINT16(Ljava/io/RandomAccessFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUINT32(Ljava/io/RandomAccessFile;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-wide v6, v0

    move-wide v1, v6

    move v0, v5

    :goto_0
    const/16 v3, 0x18

    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/2addr v3, v0

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static readUINT64(Ljava/io/RandomAccessFile;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-wide v6, v0

    move-wide v1, v6

    move v0, v5

    :goto_0
    const/16 v3, 0x38

    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/2addr v3, v0

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static readUTF16LEStr(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-static {p0}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    array-length v1, v0

    if-lt v1, v3, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid Data for current interpretation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
