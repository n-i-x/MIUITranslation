.class Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "iv"
    .parameter "position"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1300(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v0, v1, p3}, Lcom/miui/player/model/TrackBrowserHelper;->playTrackInPosition(Lcom/miui/player/IMediaPlaybackService;I)V

    .line 988
    return-void
.end method
