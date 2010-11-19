.class Lcom/miui/player/ui/TrackBrowserActivity$4;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/ui/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$4;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$4;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/model/TrackBrowserHelper;->dropTrack(II)V

    .line 584
    return-void
.end method
