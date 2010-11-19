.class Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mIdIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 638
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 612
    iput-object v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    .line 616
    iput-object v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 639
    iput-object p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    .line 640
    invoke-direct {p0, p4}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 641
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 642
    return-void
.end method

.method static synthetic access$500(Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/miui/player/ui/PlaylistBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 647
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, -0x2

    const/16 v9, 0x8

    .line 662
    const v7, 0x7f0b003d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 663
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f0b0044

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 664
    .local v5, progressBar:Landroid/view/View;
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget v7, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget v7, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 670
    .local v0, id:J
    const v7, 0x7f0b0037

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 671
    .local v2, iv:Landroid/widget/ImageView;
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_0

    .line 672
    const v7, 0x7f020023

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 676
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 677
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 678
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 680
    const v7, 0x7f0b000c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #iv:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 681
    .restart local v2       #iv:Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    const v7, 0x7f0b003e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 684
    return-void

    .line 674
    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const v7, 0x7f020022

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$700(Lcom/miui/player/ui/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$702(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 690
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 691
    invoke-direct {p0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 693
    :cond_0
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 697
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 705
    :goto_0
    return-object v2

    .line 702
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$400(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 703
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 704
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 705
    goto :goto_0
.end method

.method public setActivity(Lcom/miui/player/ui/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    .line 653
    return-void
.end method
