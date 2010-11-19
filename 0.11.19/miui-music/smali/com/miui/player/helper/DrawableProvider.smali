.class public Lcom/miui/player/helper/DrawableProvider;
.super Ljava/lang/Object;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/helper/DrawableProvider$DrawableWorker",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/DrawableProvider$DrawableWorker;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "defaultDrawable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/helper/DrawableProvider$DrawableWorker",
            "<TT;>;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    .local p1, worker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;,"Lcom/miui/player/helper/DrawableProvider$DrawableWorker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Ljava/util/HashMap;

    .line 19
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    .line 20
    iput-object p2, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 47
    return-void
.end method

.method public getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter "fromFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    const/4 v2, 0x0

    .line 26
    .local v2, ret:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    invoke-interface {v3, p1}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->asKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, keyStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 28
    iget-object v3, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 29
    .local v0, drawable:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ret:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 34
    .end local v0           #drawable:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    .restart local v2       #ret:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v2, :cond_1

    .line 36
    iget-object v3, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    invoke-interface {v3, p1, p2}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    iget-object v3, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v3

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method
