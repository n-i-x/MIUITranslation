.class public Lcom/miui/player/helper/SimpleMediaScanner;
.super Ljava/lang/Object;
.source "SimpleMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/SimpleMediaScanner$1;,
        Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionClientForID3;,
        Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "com.miui.player.helper.SimpleMediaScaner"

.field private static sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

.field private static sNeedToBeScan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/helper/SimpleMediaScanner;->sNeedToBeScan:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/miui/player/helper/SimpleMediaScanner;->sNeedToBeScan:I

    return v0
.end method

.method static synthetic access$106()I
    .locals 2

    .prologue
    .line 16
    sget v0, Lcom/miui/player/helper/SimpleMediaScanner;->sNeedToBeScan:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/miui/player/helper/SimpleMediaScanner;->sNeedToBeScan:I

    return v0
.end method

.method static synthetic access$200()Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;)Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-object p0, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    return-object p0
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, fileName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 29
    .local v2, lastIndexOfDot:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 30
    const/4 v3, 0x0

    .line 34
    :goto_0
    return-object v3

    .line 33
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, extName:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static gotoScan(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "file"
    .parameter "mimeType"

    .prologue
    .line 39
    const-class v0, Lcom/miui/player/helper/SimpleMediaScanner;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionClientForID3;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionClientForID3;-><init>(Lcom/miui/player/helper/SimpleMediaScanner$1;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    sput-object v1, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    .line 45
    :cond_0
    sget-object v1, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    invoke-virtual {v1}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    sget-object v1, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    invoke-virtual {v1, p1, p2}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->addFileToScanAfterConnect(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    invoke-virtual {v1}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->connect()V

    .line 52
    :goto_0
    sget v1, Lcom/miui/player/helper/SimpleMediaScanner;->sNeedToBeScan:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/miui/player/helper/SimpleMediaScanner;->sNeedToBeScan:I

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 49
    :cond_1
    sget-object v1, Lcom/miui/player/helper/SimpleMediaScanner;->sMediaScannerConnection:Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/player/helper/SimpleMediaScanner$MediaScannerConnectionForID3;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
