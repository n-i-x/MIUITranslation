.class Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;,
        Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mGroupAlbumIdx:I

.field private mGroupArtistIdx:I

.field private mGroupSongIdx:I

.field private mIndexer:Lcom/miui/player/ui/MusicAlphabetIndexer;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/miui/player/ui/ArtistAlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v7, 0x0

    .line 519
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 520
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 496
    iput-boolean v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 521
    iput-object p3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    .line 522
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 524
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 525
    .local v6, r:Landroid/content/res/Resources;
    const v0, 0x7f020005

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 528
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 529
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 531
    invoke-direct {p0, p5}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 532
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 533
    return-void
.end method

.method static synthetic access$300(Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    .line 538
    const-string v0, "number_of_albums"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    .line 540
    const-string v0, "number_of_tracks"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    .line 542
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/miui/player/ui/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/miui/player/ui/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    new-instance v0, Lcom/miui/player/ui/MusicAlphabetIndexer;

    iget v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/player/ui/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/miui/player/ui/MusicAlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 576
    .local v5, vh:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    iget v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, artist:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v6, v0}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, displayartist:Ljava/lang/String;
    iget-object v6, v5, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 581
    .local v2, numalbums:I
    iget v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 583
    .local v3, numsongs:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {p2, v2, v3, v6}, Lcom/miui/player/MusicUtils;->makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, songs_albums:Ljava/lang/String;
    iget-object v6, v5, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumNumTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$400(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v0, p1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$402(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 592
    invoke-direct {p0, p1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 593
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 595
    :cond_0
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/miui/player/ui/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/miui/player/ui/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 563
    .local v1, vh:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f0b000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistNameTextView:Landroid/widget/TextView;

    .line 564
    const v2, 0x7f0b0013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumNumTextView:Landroid/widget/TextView;

    .line 565
    const v2, 0x7f0b0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistImageView:Landroid/widget/ImageView;

    .line 566
    iget-object v2, v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistImageView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 567
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 568
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 607
    :goto_0
    return-object v2

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$200(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 605
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 606
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 607
    goto :goto_0
.end method

.method public setActivity(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    .line 553
    return-void
.end method
