.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDrawableInfo"
.end annotation


# instance fields
.field public mAlbumDecoder:Lcom/miui/player/helper/AlbumManager$BitmapDecoder;

.field public final mDrawableAlbumId:J

.field public final mDrawableAlbumName:Ljava/lang/String;

.field public final mDrawableArtistName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 791
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-wide p2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableAlbumId:J

    .line 793
    iput-object p4, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    .line 794
    iput-object p5, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    .line 795
    return-void
.end method
