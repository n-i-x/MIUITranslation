.class final Lcom/miui/player/helper/NetworkUtils$2;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/NetworkUtils;->doPostInThreadPool(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameValuePairs:Ljava/util/List;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/player/helper/NetworkUtils$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/player/helper/NetworkUtils$2;->val$nameValuePairs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/helper/NetworkUtils$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/player/helper/NetworkUtils$2;->val$nameValuePairs:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/player/helper/NetworkUtils;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method
