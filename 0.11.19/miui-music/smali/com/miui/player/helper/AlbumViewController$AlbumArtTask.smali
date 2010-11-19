.class Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;
.super Ljava/lang/Object;
.source "AlbumViewController.java"

# interfaces
.implements Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumArtTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/AlbumViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFinish(Landroid/graphics/Bitmap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 3
    .parameter "result"
    .parameter "albumInfo"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumViewController;

    iget-object v1, p2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v2, p2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/AlbumViewController;->access$000(Lcom/miui/player/helper/AlbumViewController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumViewController;

    invoke-static {v0}, Lcom/miui/player/helper/AlbumViewController;->access$100(Lcom/miui/player/helper/AlbumViewController;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumViewController;

    invoke-static {v0}, Lcom/miui/player/helper/AlbumViewController;->access$200(Lcom/miui/player/helper/AlbumViewController;)V

    goto :goto_0
.end method

.method public downloadStart(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;I)Z
    .locals 4
    .parameter "albumInfo"
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    .line 104
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumViewController;

    iget-object v1, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/AlbumViewController;->access$000(Lcom/miui/player/helper/AlbumViewController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    if-ne p2, v3, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/player/helper/AlbumViewController$AlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumViewController;

    invoke-static {v0}, Lcom/miui/player/helper/AlbumViewController;->access$200(Lcom/miui/player/helper/AlbumViewController;)V

    :cond_0
    move v0, v3

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
