.class abstract Lcom/android/dialer/calllog/GroupingListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/GroupingListAdapter$1;,
        Lcom/android/dialer/calllog/GroupingListAdapter$2;
    }
.end annotation


# instance fields
.field protected mChangeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mGroupMetadata:Landroid/util/SparseIntArray;

.field private mItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    new-instance v0, Lcom/android/dialer/calllog/GroupingListAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/GroupingListAdapter$1;-><init>(Lcom/android/dialer/calllog/GroupingListAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    .line 58
    new-instance v0, Lcom/android/dialer/calllog/GroupingListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/GroupingListAdapter$2;-><init>(Lcom/android/dialer/calllog/GroupingListAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 66
    iput-object p1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/android/dialer/calllog/GroupingListAdapter;->reset()V

    .line 65
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mItemCount:I

    .line 169
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    .line 167
    return-void
.end method


# virtual methods
.method public addGroup(II)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "groupSize"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 125
    .local v0, "lastIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_0
.end method

.method protected abstract addGroups(Landroid/database/Cursor;)V
.end method

.method protected abstract addVoicemailGroups(Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    .line 80
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;Z)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "voicemail"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/calllog/GroupingListAdapter;->reset()V

    .line 101
    iput-object p1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    .line 103
    if-eqz p1, :cond_2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->addVoicemailGroups(Landroid/database/Cursor;)V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mItemCount:I

    .line 113
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/calllog/GroupingListAdapter;->notifyDataSetChanged()V

    .line 88
    :cond_2
    return-void

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->addGroups(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public changeCursorVoicemail(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    .line 84
    return-void
.end method

.method public getGroupSize(I)I
    .locals 2
    .param p1, "listPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 143
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 144
    :cond_0
    return v1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "listPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 156
    :cond_0
    return-object v2

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 160
    .local v0, "cursorPosition":I
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v1

    .line 163
    :cond_2
    return-object v2
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter;->mItemCount:I

    return v0
.end method

.method protected abstract onContentChanged()V
.end method
