.class public Lcom/miui/player/MusicUtils$OnPauseResumeClickListener;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPauseResumeClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1096
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1097
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->doPauseResume(Landroid/widget/ImageView;)V

    .line 1099
    :cond_0
    return-void
.end method
