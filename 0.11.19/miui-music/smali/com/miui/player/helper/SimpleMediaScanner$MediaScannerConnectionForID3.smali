.class Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;
.super Landroid/media/MediaScannerConnection;
.source "SimpleMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SimpleMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerConnectionForID3"
.end annotation


# instance fields
.field private mFileWaitToScanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mMIMETypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mFileWaitToScanList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mMIMETypeList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method


# virtual methods
.method public addFileToScanAfterConnect(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "mimeType"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mFileWaitToScanList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mMIMETypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/media/MediaScannerConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 77
    const-string v1, "com.miui.player.helper.SimpleMediaScaner"

    const-string v2, "Connected to Media Scanner Service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-class v2, Lcom/miui/player/helper/SimpleMediaScanner;

    monitor-enter v2

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mFileWaitToScanList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mFileWaitToScanList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mMIMETypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mFileWaitToScanList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v1, p0, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->mMIMETypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 86
    monitor-exit v2

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 92
    const-string v0, "com.miui.player.helper.SimpleMediaScaner"

    const-string v1, "Disconnect Media Scanner Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Landroid/media/MediaScannerConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 95
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 100
    const-string v0, "com.miui.player.helper.SimpleMediaScaner"

    const-string v1, "add a scan job"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
