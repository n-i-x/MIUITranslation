.class Lentagged/audioformats/generic/AbstractTag$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private fieldsIt:Ljava/util/Iterator;

.field private final this$0:Lentagged/audioformats/generic/AbstractTag;

.field private final val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lentagged/audioformats/generic/AbstractTag;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lentagged/audioformats/generic/AbstractTag$1;->this$0:Lentagged/audioformats/generic/AbstractTag;

    iput-object p2, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private changeIt()V
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag$1;->changeIt()V

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag$1;->changeIt()V

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
