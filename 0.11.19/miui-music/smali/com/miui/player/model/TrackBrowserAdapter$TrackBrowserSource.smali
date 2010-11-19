.class public interface abstract Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;
.super Ljava/lang/Object;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrackBrowserSource"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentTrackCursor()Landroid/database/Cursor;
.end method

.method public abstract getPlayList()Ljava/lang/String;
.end method

.method public abstract getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
.end method

.method public abstract getTrackListView()Landroid/widget/ListView;
.end method

.method public abstract init(Landroid/database/Cursor;Z)V
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isTrackCursor(Landroid/database/Cursor;)Z
.end method

.method public abstract setTrackCursor(Landroid/database/Cursor;)V
.end method

.method public abstract updateViews()V
.end method
