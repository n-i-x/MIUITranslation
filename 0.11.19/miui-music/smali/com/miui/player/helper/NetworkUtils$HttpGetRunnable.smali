.class public abstract Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpGetRunnable"
.end annotation


# instance fields
.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/player/helper/NetworkUtils$HttpGetRunnable;->inputStream:Ljava/io/InputStream;

    .line 87
    return-void
.end method
