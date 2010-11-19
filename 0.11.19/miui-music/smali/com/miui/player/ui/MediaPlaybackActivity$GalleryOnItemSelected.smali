.class Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryOnItemSelected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1471
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0025

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/TouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/TouchInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/TouchInterceptor;->stopDragging()V

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;->active(I)V

    .line 1478
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1479
    if-nez p3, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/AlbumViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumViewController;->setSpectrumVisualizerVisible(I)V

    .line 1481
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/LyricViewController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/LyricViewController;->setSpectrumVisualizerVisible(I)V

    .line 1492
    :cond_2
    :goto_0
    return-void

    .line 1482
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 1483
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/AlbumViewController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumViewController;->setSpectrumVisualizerVisible(I)V

    .line 1484
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/LyricViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/LyricViewController;->setSpectrumVisualizerVisible(I)V

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/AlbumViewController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumViewController;->setSpectrumVisualizerVisible(I)V

    .line 1487
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/LyricViewController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/LyricViewController;->setSpectrumVisualizerVisible(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1497
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
