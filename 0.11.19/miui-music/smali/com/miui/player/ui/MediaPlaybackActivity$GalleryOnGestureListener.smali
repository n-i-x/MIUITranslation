.class Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1449
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/TouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/TouchInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/TouchInterceptor;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/Gallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 1463
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 1453
    const/4 v0, 0x0

    return v0
.end method
