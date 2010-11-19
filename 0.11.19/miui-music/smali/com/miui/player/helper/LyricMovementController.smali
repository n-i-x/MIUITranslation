.class public Lcom/miui/player/helper/LyricMovementController;
.super Ljava/lang/Object;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/LyricMovementController$LyricHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x3e8

.field public static final LYRIC_STATUS_ANIM:I = 0x2

.field public static final LYRIC_STATUS_DRAG:I = 0x1

.field public static final LYRIC_STATUS_PLAY:I = 0x0

.field private static final MSG_PLAY:I = 0x1

.field private static final OFFSET_LINE_DRAG:I = 0x1

.field private static final OFFSET_LINE_PLAY:I = 0x6

.field private static final SINGLE_LINE_PADDING:Ljava/lang/String; = "\n\n\n"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastLyricLine:I

.field private mLastPosition:J

.field private mListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

.field private mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

.field private mLyricStatus:I

.field private mLyricView:Landroid/widget/TextView;

.field private mOffsetLineNumArr:[I

.field private mScrollView:Lcom/miui/player/ui/ExtendScrollView;

.field private mSlideAnimation:Lcom/miui/player/ui/SlideAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLastPosition:J

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    .line 247
    new-instance v0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/LyricMovementController$LyricHandler;-><init>(Lcom/miui/player/helper/LyricMovementController;Lcom/miui/player/helper/LyricMovementController$1;)V

    iput-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mHandler:Landroid/os/Handler;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLastLyricLine:I

    .line 46
    iput-object p1, p0, Lcom/miui/player/helper/LyricMovementController;->mListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/miui/player/helper/LyricMovementController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/helper/LyricParser$Lyric;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/ui/ExtendScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/LyricMovementController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLastPosition:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/LyricMovementController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/LyricMovementController;Lcom/miui/player/helper/LyricParser$LyricShot;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/helper/LyricMovementController;->getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/ui/SlideAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/SlideAnimation;

    return-object v0
.end method

.method private drawLyric(IILcom/miui/player/helper/LyricParser$LyricShot;)V
    .locals 11
    .parameter "start"
    .parameter "end"
    .parameter "lyricShot"

    .prologue
    .line 190
    const-string v1, "<font color=33000000>"

    .line 191
    .local v1, HIGHLITH_TAB_HEADER:Ljava/lang/String;
    const-string v0, "</font>"

    .line 193
    .local v0, HIGHLIGHT_TAB_TAIL:Ljava/lang/String;
    const-string v2, "\n"

    .line 195
    .local v2, NEW_LINE:Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget v4, p3, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    .line 199
    .local v4, highlight:I
    const/4 v6, 0x0

    .line 200
    .local v6, needInit:Z
    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    if-lez v9, :cond_0

    iget v9, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    if-nez v9, :cond_0

    .line 202
    sub-int v9, p2, p1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    .line 203
    const/4 v6, 0x1

    .line 206
    :cond_0
    move v5, p1

    .local v5, i:I
    :goto_0
    if-ge v5, p2, :cond_3

    .line 207
    const/4 v8, 0x0

    .line 208
    .local v8, spanned:Landroid/text/Spanned;
    if-ne v5, v4, :cond_2

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<font color=33000000>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v10, v5}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricContent(I)Lcom/miui/player/helper/LyricParser$LyricEntity;

    move-result-object v10

    iget-object v10, v10, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, current:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    .line 216
    .end local v3           #current:Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 218
    if-eqz v6, :cond_1

    .line 219
    sub-int v7, v5, p1

    .line 222
    .local v7, offset:I
    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    iget-object v10, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineCount()I

    move-result v10

    aput v10, v9, v7

    .line 225
    .end local v7           #offset:I
    :cond_1
    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    :cond_2
    iget-object v9, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v9, v5}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricContent(I)Lcom/miui/player/helper/LyricParser$LyricEntity;

    move-result-object v9

    iget-object v9, v9, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    goto :goto_1

    .line 229
    .end local v8           #spanned:Landroid/text/Spanned;
    :cond_3
    return-void
.end method

.method private getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;II)I
    .locals 15
    .parameter "lyricShot"
    .parameter "spaceLine"
    .parameter "lineHeight"

    .prologue
    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, height:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    move v6, v0

    .line 177
    .local v6, relIndex:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    move v7, v0

    add-int v2, v7, p2

    .line 178
    .local v2, absIndex:I
    iget-object v7, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-lt v2, v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 179
    :cond_0
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide v7, v0

    int-to-double v9, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->percent:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v3, v7

    .line 186
    :goto_0
    return v3

    .line 181
    :cond_1
    iget-object v7, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    aget v7, v7, v2

    iget-object v8, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    const/4 v9, 0x1

    sub-int v9, v2, v9

    aget v8, v8, v9

    sub-int v4, v7, v8

    .line 182
    .local v4, lineCount:I
    iget-object v7, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    const/4 v8, 0x1

    sub-int v8, v2, v8

    aget v7, v7, v8

    sub-int v5, v7, p2

    .line 183
    .local v5, offsetLine:I
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide v7, v0

    int-to-double v9, v5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->percent:D

    move-wide v11, v0

    int-to-double v13, v4

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v3, v7

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollLyric(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/ui/ExtendScrollView;->scrollTo(II)V

    .line 135
    return-void
.end method


# virtual methods
.method public getScrollView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    return-object v0
.end method

.method public onVerticalScroll(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move v1, v4

    .line 95
    :goto_0
    return v1

    .line 87
    :cond_0
    iget v1, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v1, :cond_1

    .line 88
    iput v3, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    .line 89
    iget-wide v1, p0, Lcom/miui/player/helper/LyricMovementController;->mLastPosition:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/player/helper/LyricMovementController;->refreshLyric(JZ)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v1, p0, Lcom/miui/player/helper/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/helper/LyricMovementController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 95
    goto :goto_0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/player/helper/LyricMovementController;->refreshLyric(JZ)V

    .line 139
    return-void
.end method

.method public refreshLyric(JZ)V
    .locals 7
    .parameter "pos"
    .parameter "force"

    .prologue
    .line 142
    iget-object v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    if-nez v5, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iput-wide p1, p0, Lcom/miui/player/helper/LyricMovementController;->mLastPosition:J

    .line 146
    iget-object v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v5, :cond_0

    .line 150
    const/4 v3, 0x6

    .line 152
    .local v3, spaceLine:I
    iget-object v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;

    move-result-object v2

    .line 154
    .local v2, lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    iget-object v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 155
    .local v1, lineHeight:I
    const/4 v4, -0x6

    .line 156
    .local v4, startLine:I
    iget-object v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v5}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v0

    .line 157
    .local v0, endLine:I
    iget v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 164
    :goto_1
    if-nez p3, :cond_2

    iget v5, v2, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    iget v6, p0, Lcom/miui/player/helper/LyricMovementController;->mLastLyricLine:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLastLyricLine:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 165
    :cond_2
    iget v5, v2, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    iput v5, p0, Lcom/miui/player/helper/LyricMovementController;->mLastLyricLine:I

    .line 166
    invoke-direct {p0, v4, v0, v2}, Lcom/miui/player/helper/LyricMovementController;->drawLyric(IILcom/miui/player/helper/LyricParser$LyricShot;)V

    .line 169
    :cond_3
    invoke-direct {p0}, Lcom/miui/player/helper/LyricMovementController;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const/4 v5, 0x6

    invoke-direct {p0, v2, v5, v1}, Lcom/miui/player/helper/LyricMovementController;->getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;II)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/miui/player/helper/LyricMovementController;->scrollLyric(I)V

    goto :goto_0

    .line 160
    :cond_4
    add-int/lit8 v0, v0, 0x6

    goto :goto_1
.end method

.method public resetLyric(Lcom/miui/player/helper/LyricParser$Lyric;)V
    .locals 1
    .parameter "lyric"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eq v0, p1, :cond_0

    .line 107
    iput-object p1, p0, Lcom/miui/player/helper/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mOffsetLineNumArr:[I

    .line 111
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLastLyricLine:I

    .line 112
    return-void
.end method

.method public setScrollView(Lcom/miui/player/ui/ExtendScrollView;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    .line 56
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/ExtendScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    .line 58
    new-instance v0, Lcom/miui/player/ui/SlideAnimation;

    iget-object v1, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/SlideAnimation;-><init>(Landroid/widget/ScrollView;)V

    iput-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/SlideAnimation;

    .line 59
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/SlideAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/SlideAnimation;->setDuration(J)V

    .line 60
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/SlideAnimation;

    new-instance v1, Lcom/miui/player/helper/LyricMovementController$1;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/LyricMovementController$1;-><init>(Lcom/miui/player/helper/LyricMovementController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/SlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mScrollView:Lcom/miui/player/ui/ExtendScrollView;

    iget-object v1, p0, Lcom/miui/player/helper/LyricMovementController;->mListener:Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/ExtendScrollView$OnExtendScrollListener;)V

    .line 80
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController;->mLyricView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    return-void
.end method
