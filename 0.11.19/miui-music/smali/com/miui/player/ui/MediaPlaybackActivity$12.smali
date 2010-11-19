.class Lcom/miui/player/ui/MediaPlaybackActivity$12;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$12;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 1
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$12;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0, p4, p2, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2700(Lcom/miui/player/ui/MediaPlaybackActivity;IJ)V

    .line 1265
    return-void
.end method
