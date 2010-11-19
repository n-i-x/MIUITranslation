.class public Lcom/miui/player/ui/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/SpectrumVisualizer$SymmetryDotBar;,
        Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;,
        Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;,
        Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_PER_CELL:I = 0x8

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x7f020064

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x7f020062

.field private static final VISUALIZATION_ALPHA_WIDTH:I = 0x1e

.field private static final VISUALIZATION_HEIGHT:I = 0xc

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100

.field private static final VISUALIZATION_WIDTH:I = 0x3c


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private div:F

.field private mAlphaWidth:I

.field private mCellHeight:I

.field private mDotHeight:I

.field private mDotWidth:I

.field private mDrawer:Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;

.field private mHeightScale:D

.field private mIsEnableUpdate:Z

.field private mOnActiveStreamChangedListener:Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPixels:[I

.field private mPointData:[I

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisualWidth:I

.field private mVizData:[S


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVizData:[S

    .line 63
    new-instance v0, Lcom/miui/player/ui/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/SpectrumVisualizer$1;-><init>(Lcom/miui/player/ui/SpectrumVisualizer;)V

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 186
    const/high16 v0, 0x4200

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->div:F

    .line 188
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->a:F

    .line 190
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->b:F

    .line 192
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->c:F

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVizData:[S

    .line 63
    new-instance v0, Lcom/miui/player/ui/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/SpectrumVisualizer$1;-><init>(Lcom/miui/player/ui/SpectrumVisualizer;)V

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 186
    const/high16 v0, 0x4200

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->div:F

    .line 188
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->a:F

    .line 190
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->b:F

    .line 192
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->c:F

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVizData:[S

    .line 63
    new-instance v0, Lcom/miui/player/ui/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/SpectrumVisualizer$1;-><init>(Lcom/miui/player/ui/SpectrumVisualizer;)V

    iput-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 186
    const/high16 v0, 0x4200

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->div:F

    .line 188
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->a:F

    .line 190
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->b:F

    .line 192
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->c:F

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/SpectrumVisualizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/player/ui/SpectrumVisualizer;->update()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/player/ui/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPointData:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/SpectrumVisualizer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mHeightScale:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mCellHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPixels:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/ui/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/player/ui/SpectrumVisualizer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v10, 0x0

    .line 88
    .local v10, panelDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 89
    .local v9, dotBarDrawble:Landroid/graphics/drawable/Drawable;
    const/16 v12, 0xc

    .line 90
    .local v12, visualHeight:I
    const/4 v11, 0x0

    .line 92
    .local v11, symmetry:Z
    const/16 v1, 0x1e

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    .line 93
    const/16 v1, 0x3c

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    .line 94
    const/16 v1, 0x8

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mCellHeight:I

    .line 96
    if-eqz p2, :cond_0

    .line 97
    sget-object v1, Lcom/miui/player/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 98
    .local v8, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    iget v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mCellHeight:I

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mCellHeight:I

    .line 99
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 103
    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    .line 104
    const/4 v1, 0x4

    iget v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    .line 105
    const/4 v1, 0x5

    invoke-virtual {v8, v1, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 106
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 107
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .end local v8           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v12, :cond_2

    .line 111
    const-wide/high16 v1, 0x4028

    int-to-double v3, v12

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mHeightScale:D

    .line 116
    :goto_0
    if-nez v10, :cond_3

    .line 117
    const v1, 0x7f020062

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/SpectrumVisualizer;->setImageResource(I)V

    .line 122
    :goto_1
    if-nez v9, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 126
    :cond_1
    iget v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPointData:[I

    .line 128
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, dotBar:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotWidth:I

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotHeight:I

    .line 131
    iget v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotWidth:I

    iget v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPixels:[I

    .line 132
    iget-object v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPixels:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotWidth:I

    iget v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDotHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 134
    if-eqz v11, :cond_4

    .line 135
    new-instance v1, Lcom/miui/player/ui/SpectrumVisualizer$SymmetryDotBar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/SpectrumVisualizer$SymmetryDotBar;-><init>(Lcom/miui/player/ui/SpectrumVisualizer;Lcom/miui/player/ui/SpectrumVisualizer$1;)V

    iput-object v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDrawer:Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;

    .line 140
    :goto_2
    return-void

    .line 113
    .end local v0           #dotBar:Landroid/graphics/Bitmap;
    .restart local v9       #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mHeightScale:D

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p0, v10}, Lcom/miui/player/ui/SpectrumVisualizer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 137
    .end local v9           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dotBar:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v1, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lcom/miui/player/ui/SpectrumVisualizer;Lcom/miui/player/ui/SpectrumVisualizer$1;)V

    iput-object v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDrawer:Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;

    goto :goto_2
.end method

.method public static snoopPlayer([SI)I
    .locals 9
    .parameter "outData"
    .parameter "kind"

    .prologue
    const-class v4, Landroid/media/MediaPlayer;

    .line 237
    const/4 v3, 0x0

    .line 240
    .local v3, ret:I
    :try_start_0
    const-class v4, Landroid/media/MediaPlayer;

    const-string v5, "snoop"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [S

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 241
    .local v1, m:Ljava/lang/reflect/Method;
    const-class v4, Landroid/media/MediaPlayer;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 243
    .local v2, result:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 244
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 245
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #result:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 261
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v3

    .line 249
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 250
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 254
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 256
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    move-object v0, v4

    .line 258
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 196
    invoke-virtual {p0, v11}, Lcom/miui/player/ui/SpectrumVisualizer;->postUpdate(Z)V

    .line 199
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/SpectrumVisualizer;->setVisibility(I)V

    .line 200
    iget-object v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mOnActiveStreamChangedListener:Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;

    if-eqz v7, :cond_0

    .line 201
    iget-object v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mOnActiveStreamChangedListener:Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;

    invoke-interface {v7, v11}, Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;->onChanged(Z)V

    .line 205
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVizData:[S

    invoke-static {v7, v11}, Lcom/miui/player/ui/SpectrumVisualizer;->snoopPlayer([SI)I

    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, srcIdx:I
    const/4 v0, 0x0

    .line 209
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    if-ge v1, v7, :cond_2

    .line 210
    const-wide/16 v2, 0x0

    .line 214
    .local v2, max:D
    :goto_1
    const/16 v7, 0x100

    if-ge v0, v7, :cond_1

    .line 217
    iget-object v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVizData:[S

    aget-short v7, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    iget v9, p0, Lcom/miui/player/ui/SpectrumVisualizer;->a:F

    div-float/2addr v8, v9

    iget v9, p0, Lcom/miui/player/ui/SpectrumVisualizer;->b:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v5, v7

    .line 219
    .local v5, val:D
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    iget v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    add-int/2addr v0, v7

    .line 222
    goto :goto_1

    .line 223
    .end local v5           #val:D
    :cond_1
    add-int/lit16 v0, v0, -0x100

    .line 227
    iget v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->div:F

    float-to-double v7, v7

    div-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    iget v9, p0, Lcom/miui/player/ui/SpectrumVisualizer;->c:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4028

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 230
    iget-object v7, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPointData:[I

    double-to-int v8, v2

    iget-object v9, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPointData:[I

    aget v9, v9, v1

    sub-int/2addr v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v2           #max:D
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/SpectrumVisualizer;->invalidate()V

    .line 234
    return-void
.end method


# virtual methods
.method public enableUpdate(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v0, p1, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/SpectrumVisualizer;->postUpdate(Z)V

    .line 164
    iput-boolean p1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 166
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    iget v3, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    sub-int v0, v2, v3

    .line 149
    .local v0, end:I
    iget v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDrawer:Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    :goto_1
    if-lez v1, :cond_1

    .line 155
    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mAlphaWidth:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDrawer:Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-interface {v2, p1, v3}, Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 157
    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mDrawer:Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mVisualWidth:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 154
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 159
    :cond_1
    return-void
.end method

.method public postUpdate(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/SpectrumVisualizer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/SpectrumVisualizer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_0
    return-void
.end method

.method public setOnActiveStreamChangedListener(Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/player/ui/SpectrumVisualizer;->mOnActiveStreamChangedListener:Lcom/miui/player/ui/SpectrumVisualizer$OnActiveStreamChangedListener;

    .line 183
    return-void
.end method
