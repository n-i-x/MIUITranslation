.class public Lentagged/audioformats/EncodingInfo;
.super Ljava/lang/Object;


# static fields
.field public static final FIELD_BITRATE:Ljava/lang/String; = "BITRATE"

.field public static final FIELD_CHANNEL:Ljava/lang/String; = "CHANNB"

.field public static final FIELD_INFOS:Ljava/lang/String; = "INFOS"

.field public static final FIELD_LENGTH:Ljava/lang/String; = "LENGTH"

.field public static final FIELD_SAMPLERATE:Ljava/lang/String; = "SAMPLING"

.field public static final FIELD_TYPE:Ljava/lang/String; = "TYPE"

.field public static final FIELD_VBR:Ljava/lang/String; = "VBR"


# instance fields
.field private content:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "BITRATE"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "CHANNB"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "TYPE"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "INFOS"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "SAMPLING"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, -0x4080

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "VBR"

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getChannelNumber()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "CHANNB"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExtraEncodingInfos()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "INFOS"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/EncodingInfo;->getPreciseLength()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getPreciseLength()F
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSamplingRate()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "SAMPLING"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isVbr()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "VBR"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setBitrate(I)V
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "BITRATE"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setChannelNumber(I)V
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "CHANNB"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtraEncodingInfos(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "INFOS"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLength(I)V
    .locals 4

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    new-instance v2, Ljava/lang/Float;

    int-to-float v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPreciseLength(F)V
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "SAMPLING"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVbr(Z)V
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "VBR"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Encoding infos content:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
