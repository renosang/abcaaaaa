.class public abstract Lcom/android/contacts/common/list/IndexerListAdapter;
.super Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.source "IndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    .line 59
    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 12
    .param p1, "listView"    # Lcom/android/contacts/common/list/PinnedHeaderListView;

    .prologue
    const/4 v11, -0x1

    const/4 v1, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 154
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .line 158
    .local v0, "index":I
    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 159
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 150
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v2

    .line 162
    .local v2, "listPosition":I
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v10

    sub-int v7, v2, v10

    .line 164
    .local v7, "position":I
    const/4 v8, -0x1

    .line 165
    .local v8, "section":I
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 166
    .local v5, "partition":I
    iget v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    if-ne v5, v10, :cond_3

    .line 167
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/IndexerListAdapter;->getOffsetInPartition(I)I

    move-result v4

    .line 168
    .local v4, "offset":I
    if-eq v4, v11, :cond_3

    .line 169
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v8

    .line 173
    .end local v4    # "offset":I
    :cond_3
    if-ne v8, v11, :cond_4

    .line 174
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 177
    .local v9, "topChild":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 179
    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 181
    :cond_5
    iget-object v11, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v10}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v11, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 184
    iget v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForPartition(I)I

    move-result v6

    .line 185
    .local v6, "partitionStart":I
    iget v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 186
    add-int/lit8 v6, v6, 0x1

    .line 190
    :cond_6
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v10

    add-int v3, v6, v10

    .line 191
    .local v3, "nextSectionPosition":I
    add-int/lit8 v10, v3, -0x1

    if-ne v7, v10, :cond_7

    const/4 v1, 0x1

    .line 192
    .local v1, "isLastInSection":Z
    :cond_7
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto :goto_0
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-static {v1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->-get0(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    return-object v1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-static {v1, p1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->-set0(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;I)I

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 210
    .local v0, "section":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    .line 212
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 218
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    .line 224
    .end local v0    # "section":I
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    return-object v1

    .line 214
    .restart local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    .line 215
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 218
    goto :goto_1

    .line 220
    .end local v0    # "section":I
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    .line 221
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    .line 222
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_2
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/common/list/IndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    return-object v0

    .line 145
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, " "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .param p1, "partition"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    .line 85
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 95
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->invalidate()V

    .line 93
    return-void
.end method

.method protected abstract setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 77
    return-void
.end method
