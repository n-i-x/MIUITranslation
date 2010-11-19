.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/helper/DrawableProvider$DrawableWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDrawableWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/helper/DrawableProvider$DrawableWorker",
        "<",
        "Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    return-void
.end method


# virtual methods
.method public asKey(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 806
    iget-object v0, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x0

    .line 811
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    const-string v2, "album"

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic asKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 799
    check-cast p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->asKey(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "key"
    .parameter "fromFile"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->access$400(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Lcom/miui/player/ui/AlbumBrowserActivity;

    move-result-object v0

    iget-wide v1, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableAlbumId:J

    iget-object v3, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v5}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->access$600(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v6}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->access$700(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)I

    move-result v6

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/player/helper/AlbumManager;->getCachedArtwork(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 799
    check-cast p1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->getDrawable(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public needRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v2}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->access$800(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v4

    .line 826
    .local v0, isValidAlbum:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v2}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->access$900(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v1, v4

    .line 829
    .local v1, isValidArtist:Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    .line 833
    :goto_2
    return v2

    .end local v0           #isValidAlbum:Z
    .end local v1           #isValidArtist:Z
    :cond_2
    move v0, v3

    .line 824
    goto :goto_0

    .restart local v0       #isValidAlbum:Z
    :cond_3
    move v1, v3

    .line 826
    goto :goto_1

    .restart local v1       #isValidArtist:Z
    :cond_4
    move v2, v4

    .line 833
    goto :goto_2
.end method
