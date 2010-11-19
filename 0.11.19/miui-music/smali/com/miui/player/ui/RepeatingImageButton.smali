.class public Lcom/miui/player/ui/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/player/ui/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mInterval:J

    .line 112
    new-instance v0, Lcom/miui/player/ui/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/RepeatingImageButton$1;-><init>(Lcom/miui/player/ui/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/RepeatingImageButton;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/RepeatingImageButton;->setLongClickable(Z)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/player/ui/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/RepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 123
    .local v0, now:J
    iget-object v2, p0, Lcom/miui/player/ui/RepeatingImageButton;->mListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/miui/player/ui/RepeatingImageButton;->mListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    iget-wide v3, p0, Lcom/miui/player/ui/RepeatingImageButton;->mStartTime:J

    sub-long v3, v0, v3

    if-eqz p1, :cond_1

    const/4 v5, -0x1

    :goto_0
    invoke-interface {v2, p0, v3, v4, v5}, Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 126
    :cond_0
    return-void

    .line 124
    :cond_1
    iget v5, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 91
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    sparse-switch p1, :sswitch_data_0

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-wide v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/ui/RepeatingImageButton;->doRepeat(Z)V

    .line 106
    iput-wide v2, p0, Lcom/miui/player/ui/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    iget-wide v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, v2}, Lcom/miui/player/ui/RepeatingImageButton;->doRepeat(Z)V

    .line 78
    iput-wide v3, p0, Lcom/miui/player/ui/RepeatingImageButton;->mStartTime:J

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mStartTime:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeatCount:I

    .line 67
    iget-object v0, p0, Lcom/miui/player/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/player/ui/RepeatingImageButton;->mListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    .line 60
    iput-wide p2, p0, Lcom/miui/player/ui/RepeatingImageButton;->mInterval:J

    .line 61
    return-void
.end method
