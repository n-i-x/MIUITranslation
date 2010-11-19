.class public Lentagged/audioformats/asf/data/FileHeader;
.super Lentagged/audioformats/asf/data/Chunk;


# instance fields
.field private final duration:Ljava/math/BigInteger;

.field private final fileCreationTime:Ljava/util/Date;

.field private fileSize:Ljava/math/BigInteger;

.field private final flags:J

.field private final maxPackageSize:J

.field private final minPackageSize:J

.field private final packageCount:Ljava/math/BigInteger;

.field private final timeEndPos:Ljava/math/BigInteger;

.field private final timeStartPos:Ljava/math/BigInteger;

.field private final uncompressedFrameSize:J


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V
    .locals 4

    sget-object v3, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v3, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    iput-object p4, p0, Lentagged/audioformats/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    iput-object p6, p0, Lentagged/audioformats/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    iput-object p7, p0, Lentagged/audioformats/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    iput-object p8, p0, Lentagged/audioformats/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    iput-object p9, p0, Lentagged/audioformats/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    iput-wide p10, p0, Lentagged/audioformats/asf/data/FileHeader;->flags:J

    move-wide/from16 v0, p12

    move-object v2, p0

    iput-wide v0, v2, Lentagged/audioformats/asf/data/FileHeader;->minPackageSize:J

    move-wide/from16 v0, p14

    move-object v2, p0

    iput-wide v0, v2, Lentagged/audioformats/asf/data/FileHeader;->maxPackageSize:J

    move-wide/from16 v0, p16

    move-object v2, p0

    iput-wide v0, v2, Lentagged/audioformats/asf/data/FileHeader;->uncompressedFrameSize:J

    invoke-static {p5}, Lentagged/audioformats/asf/util/Utils;->getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lentagged/audioformats/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getDuration()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDurationInSeconds()I
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10000000"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getFileCreationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFileSize()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/FileHeader;->flags:J

    return-wide v0
.end method

.method public getMaxPackageSize()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/FileHeader;->maxPackageSize:J

    return-wide v0
.end method

.method public getMinPackageSize()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/FileHeader;->minPackageSize:J

    return-wide v0
.end method

.method public getPackageCount()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreciseDuration()F
    .locals 4

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getTimeEndPos()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTimeStartPos()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUncompressedFrameSize()J
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/asf/data/FileHeader;->uncompressedFrameSize:J

    return-wide v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "\nFileHeader\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Filesize      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Bytes \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Media duration= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "10000"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ms \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   Created at    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getFileCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
