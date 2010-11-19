.class Lcom/miui/player/ui/MediaPlaybackActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1250
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$10;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$10;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2500(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 1253
    return-void
.end method
