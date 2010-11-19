.class public Lcom/miui/player/ui/ExtendScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;
    }
.end annotation


# static fields
.field private static DO_HORIZONTAL_SCROLL:I

.field private static DO_VERTICAL_SCROLL:I

.field private static NONE:I


# instance fields
.field private donewithclick:Z

.field private firstclick:Z

.field private firstx:F

.field private firsty:F

.field private gestureRecipient:I

.field private lastRawx:F

.field private lastRawy:F

.field private lastx:F

.field private lasty:F

.field private mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/ui/ExtendScrollView;->NONE:I

    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/ui/ExtendScrollView;->DO_VERTICAL_SCROLL:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/miui/player/ui/ExtendScrollView;->DO_HORIZONTAL_SCROLL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->lastx:F

    .line 19
    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->lasty:F

    .line 21
    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->firstx:F

    .line 23
    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->firsty:F

    .line 25
    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawx:F

    .line 27
    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawy:F

    .line 29
    sget v0, Lcom/miui/player/ui/ExtendScrollView;->NONE:I

    iput v0, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    .line 31
    iput-boolean v1, p0, Lcom/miui/player/ui/ExtendScrollView;->donewithclick:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    .line 35
    iput-boolean v1, p0, Lcom/miui/player/ui/ExtendScrollView;->firstclick:Z

    .line 39
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    invoke-interface {v0, p1}, Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/high16 v8, -0x4080

    .line 43
    const/4 v2, 0x1

    .line 45
    .local v2, retthis:Z
    iget-boolean v5, p0, Lcom/miui/player/ui/ExtendScrollView;->donewithclick:Z

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firstx:F

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firsty:F

    .line 48
    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firstx:F

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastx:F

    .line 49
    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firsty:F

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lasty:F

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawx:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawy:F

    .line 52
    iput-boolean v10, p0, Lcom/miui/player/ui/ExtendScrollView;->donewithclick:Z

    .line 53
    iput-boolean v9, p0, Lcom/miui/player/ui/ExtendScrollView;->firstclick:Z

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 60
    :cond_0
    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    sget v6, Lcom/miui/player/ui/ExtendScrollView;->NONE:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lasty:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/miui/player/ui/ExtendScrollView;->lastx:F

    sub-float v3, v5, v6

    .line 64
    .local v3, xdiff:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/miui/player/ui/ExtendScrollView;->lasty:F

    sub-float v4, v5, v6

    .line 65
    .local v4, ydiff:F
    cmpg-float v5, v3, v7

    if-gez v5, :cond_2

    .line 66
    mul-float/2addr v3, v8

    .line 67
    :cond_2
    cmpg-float v5, v4, v7

    if-gez v5, :cond_3

    .line 68
    mul-float/2addr v4, v8

    .line 69
    :cond_3
    cmpl-float v5, v3, v4

    if-lez v5, :cond_b

    .line 70
    sget v5, Lcom/miui/player/ui/ExtendScrollView;->DO_HORIZONTAL_SCROLL:I

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    .line 76
    .end local v3           #xdiff:F
    .end local v4           #ydiff:F
    :cond_4
    :goto_0
    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    sget v6, Lcom/miui/player/ui/ExtendScrollView;->DO_HORIZONTAL_SCROLL:I

    if-ne v5, v6, :cond_c

    .line 77
    iget-boolean v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firstclick:Z

    if-nez v5, :cond_5

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/miui/player/ui/ExtendScrollView;->lastx:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawx:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float v0, v5, v8

    .line 83
    .local v0, offsetx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/miui/player/ui/ExtendScrollView;->lasty:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawy:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float v1, v5, v8

    .line 84
    .local v1, offsety:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 86
    .end local v0           #offsetx:F
    .end local v1           #offsety:F
    :cond_5
    iget-object v5, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    if-eqz v5, :cond_6

    .line 87
    iget-object v5, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    invoke-interface {v5, p1}, Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 89
    :cond_6
    iput-boolean v10, p0, Lcom/miui/player/ui/ExtendScrollView;->firstclick:Z

    .line 98
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 100
    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firstx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_9

    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->firsty:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_9

    .line 103
    iget-object v5, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    if-eqz v5, :cond_8

    .line 104
    iget-object v5, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    invoke-interface {v5, p1}, Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 106
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    :cond_9
    iput-boolean v9, p0, Lcom/miui/player/ui/ExtendScrollView;->donewithclick:Z

    .line 109
    sget v5, Lcom/miui/player/ui/ExtendScrollView;->NONE:I

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    .line 112
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastx:F

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lasty:F

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawx:F

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->lastRawy:F

    .line 116
    return v2

    .line 72
    .restart local v3       #xdiff:F
    .restart local v4       #ydiff:F
    :cond_b
    sget v5, Lcom/miui/player/ui/ExtendScrollView;->DO_VERTICAL_SCROLL:I

    iput v5, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    goto/16 :goto_0

    .line 90
    .end local v3           #xdiff:F
    .end local v4           #ydiff:F
    :cond_c
    iget v5, p0, Lcom/miui/player/ui/ExtendScrollView;->gestureRecipient:I

    sget v6, Lcom/miui/player/ui/ExtendScrollView;->DO_VERTICAL_SCROLL:I

    if-ne v5, v6, :cond_7

    .line 91
    iget-object v5, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    if-eqz v5, :cond_d

    .line 92
    iget-object v5, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    invoke-interface {v5, p1}, Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;->onScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 94
    :cond_d
    if-nez v2, :cond_7

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public setOnExtendScrollListener(Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/player/ui/ExtendScrollView;->mExtendScrollListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    .line 129
    return-void
.end method
