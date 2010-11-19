.class Lcom/miui/player/helper/LyricMovementController$1;
.super Ljava/lang/Object;
.source "LyricMovementController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/LyricMovementController;->setScrollView(Lcom/miui/player/ui/ExtendScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/LyricMovementController;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/player/helper/LyricMovementController$1;->this$0:Lcom/miui/player/helper/LyricMovementController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/helper/LyricMovementController$1;->this$0:Lcom/miui/player/helper/LyricMovementController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/helper/LyricMovementController;->access$002(Lcom/miui/player/helper/LyricMovementController;I)I

    .line 65
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 70
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 75
    return-void
.end method
