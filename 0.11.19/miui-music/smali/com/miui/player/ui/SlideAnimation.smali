.class public Lcom/miui/player/ui/SlideAnimation;
.super Landroid/view/animation/Animation;
.source "SlideAnimation.java"


# instance fields
.field private mEnd:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 1
    .parameter "scrollView"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    iput v0, p0, Lcom/miui/player/ui/SlideAnimation;->mStart:I

    .line 12
    iput v0, p0, Lcom/miui/player/ui/SlideAnimation;->mEnd:I

    .line 17
    iput-object p1, p0, Lcom/miui/player/ui/SlideAnimation;->mScrollView:Landroid/widget/ScrollView;

    .line 18
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 33
    iget v1, p0, Lcom/miui/player/ui/SlideAnimation;->mStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/player/ui/SlideAnimation;->mEnd:I

    iget v3, p0, Lcom/miui/player/ui/SlideAnimation;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 34
    .local v0, offset:I
    iget-object v1, p0, Lcom/miui/player/ui/SlideAnimation;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 35
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 28
    return-void
.end method

.method public setSlide(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/player/ui/SlideAnimation;->mStart:I

    .line 22
    iput p2, p0, Lcom/miui/player/ui/SlideAnimation;->mEnd:I

    .line 23
    return-void
.end method
