.class public Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1

    invoke-static {p2}, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;->createString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    return-void
.end method

.method private static createString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected populate([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->populate([B)V

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;->content:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;->content:Ljava/lang/String;

    return-void
.end method
