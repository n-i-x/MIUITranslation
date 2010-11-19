.class Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Lcom/miui/player/helper/AlbumManager$BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileBitmapDecoder"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "opts"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
