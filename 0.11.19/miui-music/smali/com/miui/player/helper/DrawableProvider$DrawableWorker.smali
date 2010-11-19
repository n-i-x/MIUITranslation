.class public interface abstract Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
.super Ljava/lang/Object;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/DrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawableWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;Z)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method
