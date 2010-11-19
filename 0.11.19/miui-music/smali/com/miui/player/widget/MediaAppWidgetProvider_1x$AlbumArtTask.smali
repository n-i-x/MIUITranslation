.class Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;
.super Ljava/lang/Object;
.source "MediaAppWidgetProvider_1x.java"

# interfaces
.implements Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumArtTask"
.end annotation


# instance fields
.field private final mViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;


# direct methods
.method public constructor <init>(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter
    .parameter "remoteViews"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->mViews:Landroid/widget/RemoteViews;

    .line 350
    return-void
.end method


# virtual methods
.method public downloadFinish(Landroid/graphics/Bitmap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 5
    .parameter "result"
    .parameter "albumInfo"

    .prologue
    const v4, 0x7f0b0004

    .line 354
    iget-object v1, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    iget-object v2, p2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$000(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$100()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 362
    invoke-static {}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, smallBitmap:Landroid/graphics/Bitmap;
    if-eq v0, p1, :cond_2

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->mViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 375
    .end local v0           #smallBitmap:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v1, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-static {}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$100()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->mViews:Landroid/widget/RemoteViews;

    invoke-static {v1, v2, v3}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$200(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 376
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$302(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap;

    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->mViews:Landroid/widget/RemoteViews;

    const v2, 0x7f020011

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method public downloadStart(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;I)Z
    .locals 4
    .parameter "albumInfo"
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    .line 381
    iget-object v0, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    iget-object v1, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$000(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    if-ne p2, v3, :cond_0

    .line 384
    iget-object v0, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0004

    const v2, 0x7f020011

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 385
    iget-object v0, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-static {}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$100()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;->mViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1, v2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$200(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    :cond_0
    move v0, v3

    .line 389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
