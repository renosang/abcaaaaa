.class public abstract Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;


# static fields
.field public static final PARTITION_HEADER_TYPE:I


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 14
    .param p1, "listView"    # Lcom/android/contacts/common/list/PinnedHeaderListView;

    .prologue
    const/4 v13, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v9

    .line 102
    .local v9, "size":I
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    array-length v12, v12

    if-eq v12, v9, :cond_2

    .line 103
    :cond_1
    new-array v12, v9, [Z

    iput-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    .line 105
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_4

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v11

    .line 107
    .local v11, "visible":Z
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v11, v12, v3

    .line 108
    if-nez v11, :cond_3

    .line 109
    const/4 v12, 0x1

    invoke-virtual {p1, v3, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 105
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v11    # "visible":Z
    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    .line 116
    .local v1, "headerViewsCount":I
    const/4 v6, -0x1

    .line 117
    .local v6, "maxTopHeader":I
    const/4 v10, 0x0

    .line 118
    .local v10, "topHeaderHeight":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_5

    .line 119
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_a

    .line 120
    invoke-virtual {p1, v10}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v12

    sub-int v8, v12, v1

    .line 121
    .local v8, "position":I
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 122
    .local v7, "partition":I
    if-le v3, v7, :cond_9

    .line 133
    .end local v7    # "partition":I
    .end local v8    # "position":I
    :cond_5
    move v5, v9

    .line 134
    .local v5, "maxBottomHeader":I
    const/4 v0, 0x0

    .line 135
    .local v0, "bottomHeaderHeight":I
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v4

    .line 136
    .local v4, "listHeight":I
    move v3, v9

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-le v3, v6, :cond_7

    .line 137
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_6

    .line 138
    sub-int v12, v4, v0

    invoke-virtual {p1, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v12

    sub-int v8, v12, v1

    .line 140
    .restart local v8    # "position":I
    if-gez v8, :cond_b

    .line 158
    .end local v8    # "position":I
    :cond_7
    add-int/lit8 v3, v6, 0x1

    :goto_3
    if-ge v3, v5, :cond_c

    .line 159
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_8

    .line 160
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v12

    invoke-virtual {p1, v3, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 158
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 126
    .end local v0    # "bottomHeaderHeight":I
    .end local v4    # "listHeight":I
    .end local v5    # "maxBottomHeader":I
    .restart local v7    # "partition":I
    .restart local v8    # "position":I
    :cond_9
    invoke-virtual {p1, v3, v10, v13}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 127
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v12

    add-int/2addr v10, v12

    .line 128
    move v6, v3

    .line 118
    .end local v7    # "partition":I
    .end local v8    # "position":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .restart local v0    # "bottomHeaderHeight":I
    .restart local v4    # "listHeight":I
    .restart local v5    # "maxBottomHeader":I
    .restart local v8    # "position":I
    :cond_b
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {p0, v12}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 145
    .restart local v7    # "partition":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_7

    if-le v3, v7, :cond_7

    .line 149
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v2

    .line 150
    .local v2, "height":I
    add-int/2addr v0, v2

    .line 152
    sub-int v12, v4, v0

    invoke-virtual {p1, v3, v12, v13}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    .line 153
    move v5, v3

    goto :goto_2

    .line 94
    .end local v2    # "height":I
    .end local v7    # "partition":I
    .end local v8    # "position":I
    :cond_c
    return-void
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    return v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "partition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    .local v0, "headerType":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    move-object v1, p2

    .line 79
    .end local v0    # "headerType":Ljava/lang/Integer;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v3, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "view":Landroid/view/View;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 83
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 86
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 87
    return-object v1

    .line 89
    :cond_2
    return-object v3
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 2
    .param p1, "partition"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 47
    return-void
.end method
