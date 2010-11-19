.class public Lcom/miui/player/ui/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/TouchInterceptor$RemoveListener;,
        Lcom/miui/player/ui/TouchInterceptor$DropListener;,
        Lcom/miui/player/ui/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1


# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/miui/player/ui/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v4, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveMode:I

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 92
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "deletemode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveMode:I

    .line 94
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mTouchSlop:I

    .line 95
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mItemHeightNormal:I

    .line 97
    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mItemHeightExpanded:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/TouchInterceptor;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/TouchInterceptor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/TouchInterceptor;)Lcom/miui/player/ui/TouchInterceptor$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/TouchInterceptor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/player/ui/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 199
    iget v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 200
    iget v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mUpperBound:I

    .line 202
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 203
    iget v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mLowerBound:I

    .line 205
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 245
    iget v7, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 246
    .local v0, childnum:I
    iget v7, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 250
    :cond_0
    iget v7, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 253
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 254
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_1

    .line 278
    return-void

    .line 257
    :cond_1
    iget v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mItemHeightNormal:I

    .line 258
    .local v2, height:I
    const/4 v5, 0x0

    .line 259
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    iget v7, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 263
    const/4 v5, 0x4

    .line 273
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 274
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 268
    :cond_4
    if-ne v3, v0, :cond_2

    .line 269
    iget v7, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 270
    iget v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 389
    iget v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 390
    const/high16 v0, 0x3f80

    .line 391
    .local v0, alpha:F
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 392
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 393
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 397
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/miui/player/ui/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 398
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 186
    iget v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPoint:I

    sub-int v2, p1, v2

    const/16 v3, 0x20

    sub-int v0, v2, v3

    .line 187
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/miui/player/ui/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 188
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 189
    iget v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-gez v0, :cond_0

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 174
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 175
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 176
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 182
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 175
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 182
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 357
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->stopDragging()V

    .line 359
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 360
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 361
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 362
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/miui/player/ui/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 364
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 365
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 366
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x198

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 370
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 371
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 373
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 374
    .local v1, v:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 375
    .local v0, backGroundColor:I
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 376
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    iput-object p1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 379
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 380
    iget-object v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iput-object v1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 382
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 214
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 217
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 218
    .local v4, y:I
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    invoke-virtual {p0, v2, v4}, Lcom/miui/player/ui/TouchInterceptor;->setSelectionFromTop(II)V

    .line 222
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->layoutChildren()V

    .line 223
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 224
    if-nez v3, :cond_1

    .line 233
    return-void

    .line 228
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 229
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/miui/player/ui/TouchInterceptor;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    .line 102
    iget-object v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_0

    .line 103
    iget v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveMode:I

    if-nez v8, :cond_0

    .line 104
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/miui/player/ui/TouchInterceptor$1;

    invoke-direct {v10, p0}, Lcom/miui/player/ui/TouchInterceptor$1;-><init>(Lcom/miui/player/ui/TouchInterceptor;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 128
    :cond_0
    iget-object v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragListener:Lcom/miui/player/ui/TouchInterceptor$DragListener;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    if-eqz v8, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 165
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 131
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 132
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 133
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/miui/player/ui/TouchInterceptor;->pointToPosition(II)I

    move-result v3

    .line 134
    .local v3, itemnum:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 138
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPoint:I

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mCoordOffset:I

    .line 140
    const v8, 0x7f0b0037

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, dragger:Landroid/view/View;
    iget-object v4, p0, Lcom/miui/player/ui/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 142
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 145
    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v8, :cond_3

    .line 146
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 151
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/miui/player/ui/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 153
    iput v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    .line 154
    iget v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    iput v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    .line 155
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    .line 156
    iget v5, p0, Lcom/miui/player/ui/TouchInterceptor;->mTouchSlop:I

    .line 157
    .local v5, touchSlop:I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mUpperBound:I

    .line 158
    add-int v8, v7, v5

    iget v9, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mLowerBound:I

    .line 159
    const/4 v8, 0x0

    goto :goto_1

    .line 161
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #touchSlop:I
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 282
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v10, :cond_0

    .line 283
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    :cond_0
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragListener:Lcom/miui/player/ui/TouchInterceptor$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    if-eqz v10, :cond_e

    :cond_1
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v10, :cond_e

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 287
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 345
    :cond_2
    :goto_0
    const/4 v10, 0x1

    .line 353
    .end local v0           #action:I
    :goto_1
    return v10

    .line 290
    .restart local v0       #action:I
    :pswitch_0
    iget-object v4, p0, Lcom/miui/player/ui/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 291
    .local v4, r:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 292
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->stopDragging()V

    .line 293
    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 294
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    if-eqz v10, :cond_3

    .line 295
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    iget v11, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    invoke-interface {v10, v11}, Lcom/miui/player/ui/TouchInterceptor$RemoveListener;->remove(I)V

    .line 297
    :cond_3
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/miui/player/ui/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 299
    :cond_4
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    if-ltz v10, :cond_5

    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 300
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    iget v11, p0, Lcom/miui/player/ui/TouchInterceptor;->mFirstDragPos:I

    iget v12, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    invoke-interface {v10, v11, v12}, Lcom/miui/player/ui/TouchInterceptor$DropListener;->drop(II)V

    .line 302
    :cond_5
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/miui/player/ui/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 308
    .end local v4           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 309
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 310
    .local v9, y:I
    invoke-direct {p0, v8, v9}, Lcom/miui/player/ui/TouchInterceptor;->dragView(II)V

    .line 311
    invoke-direct {p0, v9}, Lcom/miui/player/ui/TouchInterceptor;->getItemForPosition(I)I

    move-result v2

    .line 312
    .local v2, itemnum:I
    if-ltz v2, :cond_2

    .line 313
    if-eqz v0, :cond_6

    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    if-eq v2, v10, :cond_8

    .line 314
    :cond_6
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragListener:Lcom/miui/player/ui/TouchInterceptor$DragListener;

    if-eqz v10, :cond_7

    .line 315
    iget-object v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragListener:Lcom/miui/player/ui/TouchInterceptor$DragListener;

    iget v11, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    invoke-interface {v10, v11, v2}, Lcom/miui/player/ui/TouchInterceptor$DragListener;->drag(II)V

    .line 317
    :cond_7
    iput v2, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragPos:I

    .line 318
    invoke-direct {p0}, Lcom/miui/player/ui/TouchInterceptor;->doExpansion()V

    .line 320
    :cond_8
    const/4 v6, 0x0

    .line 321
    .local v6, speed:I
    invoke-direct {p0, v9}, Lcom/miui/player/ui/TouchInterceptor;->adjustScrollBounds(I)V

    .line 322
    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mLowerBound:I

    if-le v9, v10, :cond_c

    .line 324
    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    iget v11, p0, Lcom/miui/player/ui/TouchInterceptor;->mLowerBound:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_b

    const/16 v10, 0x10

    move v6, v10

    .line 329
    :cond_9
    :goto_2
    if-eqz v6, :cond_2

    .line 330
    const/4 v10, 0x0

    iget v11, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v10, v11}, Lcom/miui/player/ui/TouchInterceptor;->pointToPosition(II)I

    move-result v5

    .line 331
    .local v5, ref:I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_a

    .line 334
    const/4 v10, 0x0

    iget v11, p0, Lcom/miui/player/ui/TouchInterceptor;->mHeight:I

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getDividerHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x40

    invoke-virtual {p0, v10, v11}, Lcom/miui/player/ui/TouchInterceptor;->pointToPosition(II)I

    move-result v5

    .line 336
    :cond_a
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Lcom/miui/player/ui/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 337
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_2

    .line 338
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    .line 339
    .local v3, pos:I
    sub-int v10, v3, v6

    invoke-virtual {p0, v5, v10}, Lcom/miui/player/ui/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 324
    .end local v3           #pos:I
    .end local v5           #ref:I
    .end local v7           #v:Landroid/view/View;
    :cond_b
    const/4 v10, 0x4

    move v6, v10

    goto :goto_2

    .line 325
    :cond_c
    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mUpperBound:I

    if-ge v9, v10, :cond_9

    .line 327
    iget v10, p0, Lcom/miui/player/ui/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_d

    const/16 v10, -0x10

    move v6, v10

    :goto_3
    goto :goto_2

    :cond_d
    const/4 v10, -0x4

    move v6, v10

    goto :goto_3

    .line 349
    .end local v0           #action:I
    .end local v2           #itemnum:I
    .end local v6           #speed:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_e
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto/16 :goto_1

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/miui/player/ui/TouchInterceptor$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragListener:Lcom/miui/player/ui/TouchInterceptor$DragListener;

    .line 416
    return-void
.end method

.method public setDropListener(Lcom/miui/player/ui/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    .line 420
    return-void
.end method

.method public setRemoveListener(Lcom/miui/player/ui/TouchInterceptor$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/miui/player/ui/TouchInterceptor;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    .line 424
    return-void
.end method

.method public stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/miui/player/ui/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 404
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 405
    iget-object v1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iput-object v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 408
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    iput-object v3, p0, Lcom/miui/player/ui/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 412
    :cond_1
    return-void
.end method
