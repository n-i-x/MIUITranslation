.class public Lcom/miui/player/ui/PlayingGallery;
.super Landroid/widget/Gallery;
.source "PlayingGallery.java"


# instance fields
.field private final MIN_V:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/miui/player/ui/PlayingGallery;->MIN_V:F

    .line 17
    return-void
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchSetSelected(Z)V

    .line 48
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/miui/player/ui/PlayingGallery;->getCount()I

    move-result v2

    sub-int v1, v2, v4

    .line 24
    .local v1, maxPos:I
    invoke-virtual {p0}, Lcom/miui/player/ui/PlayingGallery;->getSelectedItemPosition()I

    move-result v0

    .line 25
    .local v0, curPos:I
    const/high16 v2, 0x42c8

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1

    .line 26
    if-lez v0, :cond_0

    .line 27
    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PlayingGallery;->setSelection(I)V

    :cond_0
    :goto_0
    move v2, v4

    .line 36
    .end local v0           #curPos:I
    .end local v1           #maxPos:I
    :goto_1
    return v2

    .line 29
    .restart local v0       #curPos:I
    .restart local v1       #maxPos:I
    :cond_1
    const/high16 v2, -0x3d38

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 30
    if-ge v0, v1, :cond_0

    .line 31
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PlayingGallery;->setSelection(I)V

    goto :goto_0

    .line 36
    .end local v0           #curPos:I
    .end local v1           #maxPos:I
    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, p1, p2, v2, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
