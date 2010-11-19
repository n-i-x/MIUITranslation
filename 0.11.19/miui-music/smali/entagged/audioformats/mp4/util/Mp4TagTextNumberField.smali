.class public Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;
.super Lentagged/audioformats/mp4/util/Mp4TagTextField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method protected build([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {p1, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;->content:Ljava/lang/String;

    return-void
.end method

.method protected getDataBytes()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;->content:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method
