.class Lcom/miui/player/ui/MediaPlaybackActivity$2;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


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
    .line 832
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$2;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 835
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 860
    :goto_0
    return-void

    .line 837
    :pswitch_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$2;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 838
    .local v0, next:J
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$2;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1000(Lcom/miui/player/ui/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 846
    .end local v0           #next:J
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$2;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07003b

    new-instance v4, Lcom/miui/player/ui/MediaPlaybackActivity$2$1;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$2$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
