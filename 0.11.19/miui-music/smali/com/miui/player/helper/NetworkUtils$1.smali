.class final Lcom/miui/player/helper/NetworkUtils$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/NetworkUtils;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;

.field final synthetic val$runSync:Ljava/lang/Runnable;

.field final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$strUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;

    iput-object p3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$strUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetSync(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 105
    .local v1, instream:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;

    invoke-virtual {v2, v1}, Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;->setInputStream(Ljava/io/InputStream;)V

    .line 107
    iget-object v2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;

    invoke-virtual {v2}, Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;->run()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .end local v1           #instream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_1
    return-void

    .line 109
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 110
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 113
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
