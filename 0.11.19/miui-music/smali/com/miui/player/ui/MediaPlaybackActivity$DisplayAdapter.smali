.class Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1159
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1600()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, v:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 1190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad args pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :pswitch_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/AlbumViewController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/player/helper/AlbumViewController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1193
    :goto_0
    return-object v0

    .line 1184
    :pswitch_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/LyricViewController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/player/helper/LyricViewController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1185
    goto :goto_0

    .line 1187
    :pswitch_2
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1900(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1188
    goto :goto_0

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
