.class public final Lentagged/audioformats/asf/util/AsfCopyrightField;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# static fields
.field public static final FIELD_ID:Ljava/lang/String; = "SPECIAL/WM/COPYRIGHT"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    return-void
.end method

.method public static getCopyright(Lentagged/audioformats/Tag;)Lentagged/audioformats/generic/TagTextField;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SPECIAL/WM/COPYRIGHT"

    invoke-interface {p0, v1}, Lentagged/audioformats/Tag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagField;

    instance-of v1, p0, Lentagged/audioformats/generic/TagTextField;

    if-eqz v1, :cond_0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    move-object v0, p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "SPECIAL/WM/COPYRIGHT"

    return-object v0
.end method

.method public getRawContent()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No conversion supported. Copyright is a String"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/util/AsfCopyrightField;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, "Conversion Exception occured."

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The encoding of Asf tags cannot be changed.(specified to be UTF-16LE)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    invoke-static {v0}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SPECIAL/WM/COPYRIGHT:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/asf/util/AsfCopyrightField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
