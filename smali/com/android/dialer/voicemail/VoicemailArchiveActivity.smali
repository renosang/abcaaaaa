.class public Lcom/android/dialer/voicemail/VoicemailArchiveActivity;
.super Lcom/android/dialer/TransactionSafeActivity;
.source "VoicemailArchiveActivity.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# instance fields
.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/dialer/TransactionSafeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailArchive()V

    .line 133
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursorVoicemail(Landroid/database/Cursor;)V

    .line 155
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 156
    .local v0, "showListView":Z
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 158
    const/4 v1, 0x1

    return v1

    .line 155
    .end local v0    # "showListView":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showListView":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 156
    goto :goto_1

    :cond_2
    move v2, v3

    .line 157
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f040033

    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 83
    new-instance v1, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 84
    invoke-static {p0, p1}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 87
    const v1, 0x7f0e00e2

    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 88
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 89
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 90
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 91
    const v1, 0x7f0e0094

    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    .line 92
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v2, 0x7f0d0292

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 93
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 98
    new-instance v1, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 100
    const/4 v3, 0x2

    .line 95
    invoke-static {p0, p0, v1, v2, v3}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 101
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->fetchCalls()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 123
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->isSafeToCommitTransactions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    return v2

    .line 56
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 58
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return v2

    .line 56
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->onPause()V

    .line 109
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onResume()V

    .line 113
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 138
    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    return-void
.end method
