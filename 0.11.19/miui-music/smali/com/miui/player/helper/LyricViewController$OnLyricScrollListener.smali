.class Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;
.super Ljava/lang/Object;
.source "LyricViewController.java"

# interfaces
.implements Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLyricScrollListener"
.end annotation


# instance fields
.field private mDisplayGallery:Landroid/widget/Gallery;

.field final synthetic this$0:Lcom/miui/player/helper/LyricViewController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/LyricViewController;Landroid/widget/Gallery;)V
    .locals 0
    .parameter
    .parameter "gallery"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;->mDisplayGallery:Landroid/widget/Gallery;

    .line 221
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-static {v0}, Lcom/miui/player/helper/LyricViewController;->access$200(Lcom/miui/player/helper/LyricViewController;)Lcom/miui/player/helper/LyricMovementController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/LyricMovementController;->onVerticalScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p1}, Landroid/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/player/helper/LyricViewController$OnLyricScrollListener;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 232
    const/4 v0, 0x0

    return v0
.end method
