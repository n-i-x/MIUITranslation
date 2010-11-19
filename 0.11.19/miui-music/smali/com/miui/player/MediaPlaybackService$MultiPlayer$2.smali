.class Lcom/miui/player/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "com.miui.player.asyncopencomplete"

    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 1905
    return-void
.end method
