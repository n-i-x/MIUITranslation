.class Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionClientForID3;
.super Ljava/lang/Object;
.source "SimpleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SimpleMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerConnectionClientForID3"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/SimpleMediaScanner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionClientForID3;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v0, "com.miui.player.helper.SimpleMediaScaner"

    .line 116
    const-class v0, Lcom/miui/player/helper/SimpleMediaScanner;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/miui/player/helper/SimpleMediaScanner;->access$100()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    invoke-static {}, Lcom/miui/player/helper/SimpleMediaScanner;->access$106()I

    .line 121
    const-string v1, "com.miui.player.helper.SimpleMediaScaner"

    const-string v2, "minus a scan job"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/miui/player/helper/SimpleMediaScanner;->access$100()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lcom/miui/player/helper/SimpleMediaScanner;->access$200()Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->disconnect()V

    .line 126
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/player/helper/SimpleMediaScanner;->access$202(Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;)Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    .line 129
    const-string v1, "com.miui.player.helper.SimpleMediaScaner"

    const-string v2, "release connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
