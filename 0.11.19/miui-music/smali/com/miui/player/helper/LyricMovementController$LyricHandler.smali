.class Lcom/miui/player/helper/LyricMovementController$LyricHandler;
.super Landroid/os/Handler;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/LyricMovementController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/LyricMovementController;Lcom/miui/player/helper/LyricMovementController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/miui/player/helper/LyricMovementController$LyricHandler;-><init>(Lcom/miui/player/helper/LyricMovementController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 117
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v3}, Lcom/miui/player/helper/LyricMovementController;->access$100(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/miui/player/helper/LyricMovementController;->access$002(Lcom/miui/player/helper/LyricMovementController;I)I

    .line 119
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v3}, Lcom/miui/player/helper/LyricMovementController;->access$200(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/ui/ExtendScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/ExtendScrollView;->getScrollY()I

    move-result v2

    .line 120
    .local v2, start:I
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v3}, Lcom/miui/player/helper/LyricMovementController;->access$100(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v4}, Lcom/miui/player/helper/LyricMovementController;->access$300(Lcom/miui/player/helper/LyricMovementController;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;

    move-result-object v1

    .line 121
    .local v1, lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v5}, Lcom/miui/player/helper/LyricMovementController;->access$400(Lcom/miui/player/helper/LyricMovementController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lcom/miui/player/helper/LyricMovementController;->access$500(Lcom/miui/player/helper/LyricMovementController;Lcom/miui/player/helper/LyricParser$LyricShot;II)I

    move-result v0

    .line 122
    .local v0, end:I
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v3}, Lcom/miui/player/helper/LyricMovementController;->access$600(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/ui/SlideAnimation;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/miui/player/ui/SlideAnimation;->setSlide(II)V

    .line 123
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v3}, Lcom/miui/player/helper/LyricMovementController;->access$400(Lcom/miui/player/helper/LyricMovementController;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v4}, Lcom/miui/player/helper/LyricMovementController;->access$600(Lcom/miui/player/helper/LyricMovementController;)Lcom/miui/player/ui/SlideAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v3, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    iget-object v4, p0, Lcom/miui/player/helper/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-static {v4}, Lcom/miui/player/helper/LyricMovementController;->access$300(Lcom/miui/player/helper/LyricMovementController;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v8}, Lcom/miui/player/helper/LyricMovementController;->refreshLyric(JZ)V

    .line 126
    .end local v0           #end:I
    .end local v1           #lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    .end local v2           #start:I
    :cond_0
    return-void
.end method
