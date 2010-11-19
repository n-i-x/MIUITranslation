.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;,
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;,
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;
    }
.end annotation


# static fields
.field private static sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/helper/DrawableProvider",
            "<",
            "Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

.field private mAlbumArtIndex:I

.field private final mAlbumHeight:I

.field private mAlbumIdx:I

.field private final mAlbumWidth:I

.field private mArtistIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mWorker:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    .line 646
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 622
    iput-boolean v8, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 648
    iput-object p2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    .line 649
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 651
    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 652
    const v0, 0x7f07002c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 656
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f020005

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 657
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 658
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumWidth:I

    .line 659
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumHeight:I

    .line 662
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 663
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 664
    invoke-direct {p0, p4}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 667
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mWorker:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;

    .line 669
    sget-object v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lcom/miui/player/helper/DrawableProvider;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mWorker:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/helper/DrawableProvider;-><init>(Lcom/miui/player/helper/DrawableProvider$DrawableWorker;Landroid/graphics/drawable/Drawable;)V

    sput-object v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    .line 673
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Lcom/miui/player/ui/AlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 598
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 598
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 680
    if-eqz p1, :cond_0

    .line 681
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 682
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 683
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    .line 685
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    new-instance v0, Lcom/miui/player/ui/MusicAlphabetIndexer;

    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/player/ui/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x0

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    .line 719
    .local v10, vh:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 720
    .local v9, name:Ljava/lang/String;
    move-object v4, v9

    .line 721
    .local v4, displayAlbumName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v1, v4}, Lcom/miui/player/helper/MediaFile;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 722
    iget-object v1, v10, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 725
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v1, v9}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, displayArtistName:Ljava/lang/String;
    iget-object v1, v10, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v8, v10, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumImageView:Landroid/widget/ImageView;

    .line 731
    .local v8, iv:Landroid/widget/ImageView;
    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, art:Ljava/lang/String;
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 734
    .local v2, aid:J
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;JLjava/lang/String;Ljava/lang/String;)V

    .line 735
    .local v0, info:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableInfo;
    const/4 v7, 0x0

    .line 736
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 737
    sget-object v1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v1, v0, v11}, Lcom/miui/player/helper/DrawableProvider;->getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 741
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 742
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :goto_1
    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mWorker:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;

    invoke-virtual {v1, v4, v5}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$AlbumDrawableWorker;->needRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    sget-object v1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    const/4 v11, 0x1

    invoke-virtual {v1, v0, v11}, Lcom/miui/player/helper/DrawableProvider;->getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    .line 744
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$500(Lcom/miui/player/ui/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$502(Lcom/miui/player/ui/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 752
    invoke-direct {p0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 753
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 755
    :cond_0
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 779
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 704
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 705
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;-><init>()V

    .line 706
    .local v1, vh:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    const v2, 0x7f0b000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumTextView:Landroid/widget/TextView;

    .line 707
    const v2, 0x7f0b000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->artistTextView:Landroid/widget/TextView;

    .line 708
    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumImageView:Landroid/widget/ImageView;

    .line 709
    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 711
    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 676
    sget-object v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v0}, Lcom/miui/player/helper/DrawableProvider;->clear()V

    .line 677
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 759
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 767
    :goto_0
    return-object v2

    .line 764
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$300(Lcom/miui/player/ui/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 765
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 766
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 767
    goto :goto_0
.end method

.method public setActivity(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    .line 696
    return-void
.end method
