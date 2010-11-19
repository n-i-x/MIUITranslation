.class Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
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
    name = "FileDescriptorBitmapDecoder"
.end annotation


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    .line 117
    return-void
.end method


# virtual methods
.method public decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "opts"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
