.class public abstract Lentagged/audioformats/generic/AbstractTag;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/Tag;


# instance fields
.field protected commonNumber:I

.field protected fields:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Lentagged/audioformats/generic/TagField;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAlbum(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public addArtist(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public addComment(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public addGenre(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public addTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public addTrack(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public addYear(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->add(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method protected abstract createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getAlbum()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAlbumId()Ljava/lang/String;
.end method

.method public getArtist()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getArtistId()Ljava/lang/String;
.end method

.method public getComment()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCommentId()Ljava/lang/String;
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lentagged/audioformats/generic/AbstractTag$1;

    invoke-direct {v1, p0, v0}, Lentagged/audioformats/generic/AbstractTag$1;-><init>(Lentagged/audioformats/generic/AbstractTag;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getFirstAlbum()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstArtist()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstComment()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getGenreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTitleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstTrack()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstYear()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getYearId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getGenre()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getGenreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getGenreId()Ljava/lang/String;
.end method

.method public getTitle()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTitleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTitleId()Ljava/lang/String;
.end method

.method public getTrack()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTrackId()Ljava/lang/String;
.end method

.method public getYear()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getYearId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getYearId()Ljava/lang/String;
.end method

.method public hasCommonFields()Z
    .locals 1

    iget v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isAllowedEncoding(Ljava/lang/String;)Z
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lentagged/audioformats/Tag;)V
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getArtist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setArtist(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getAlbum()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setAlbum(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getYear()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setYear(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getComment()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setComment(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTrack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setTrack(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getGenre()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setGenre(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public set(Lentagged/audioformats/generic/TagField;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagField;

    invoke-interface {p0, p1}, Lentagged/audioformats/generic/TagField;->copyContent(Lentagged/audioformats/generic/TagField;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    goto :goto_0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->isAllowedEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagField;

    instance-of v1, p0, Lentagged/audioformats/generic/TagTextField;

    if-eqz v1, :cond_1

    check-cast p0, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {p0, p1}, Lentagged/audioformats/generic/TagTextField;->setEncoding(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Tag content:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagField;

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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
