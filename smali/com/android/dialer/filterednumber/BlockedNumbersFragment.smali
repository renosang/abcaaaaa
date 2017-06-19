.class public Lcom/android/dialer/filterednumber/BlockedNumbersFragment;
.super Landroid/app/ListFragment;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;"
    }
.end annotation


# instance fields
.field private blockedNumbersMigratorForTest:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

.field private blockedNumbersText:Landroid/widget/TextView;

.field private footerText:Landroid/widget/TextView;

.field private mAdapter:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

.field private mBlockedNumberListDivider:Landroid/view/View;

.field private mBlockedNumbersDisabledForEmergency:Landroid/view/View;

.field private mImportSettings:Landroid/view/View;

.field private mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

.field protected migratePromoView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mImportSettings:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private updateActiveVoicemailProvider()V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->isVisualVoicemailEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    const v1, 0x7f0d02ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    :goto_0
    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    const v1, 0x7f0d02ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 73
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f040025

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f040023

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e00a3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    .local v0, "addNumberIcon":Landroid/widget/ImageView;
    new-instance v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 78
    .local v1, "drawable":Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetter(Ljava/lang/Character;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 79
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 80
    const v4, 0x7f0a0371

    .line 79
    invoke-static {v3, v4}, Landroid/support/v4/app/ActivityCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setColor(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    if-nez v3, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 85
    invoke-static {v3, v4}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;->newBlockedNumbersAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    invoke-virtual {p0, v3}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e0099

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->blockedNumbersText:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e009e

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->migratePromoView:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e00a1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e009a

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mImportSettings:Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e0098

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 94
    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e00a5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e009c

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e009d

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f0e00a2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 102
    const v4, 0x7f0e0096

    .line 101
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    .line 103
    new-instance v3, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;-><init>(Landroid/content/Context;Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;)V

    iput-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    .line 104
    iget-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    invoke-virtual {v3}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->asyncUpdate()V

    .line 105
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->updateActiveVoicemailProvider()V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;

    .line 211
    .local v0, "activity":Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;
    if-nez v0, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 216
    .local v1, "resId":I
    const v2, 0x7f0e00a2

    if-ne v1, v2, :cond_2

    .line 217
    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->showSearchUi()V

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    const v2, 0x7f0e009d

    if-ne v1, v2, :cond_3

    .line 219
    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->showNumbersToImportPreviewUi()V

    goto :goto_0

    .line 220
    :cond_3
    const v2, 0x7f0e009c

    if-ne v1, v2, :cond_4

    .line 222
    new-instance v2, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$2;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;)V

    .line 221
    invoke-static {v0, v2}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V

    goto :goto_0

    .line 228
    :cond_4
    const v2, 0x7f0e00a1

    if-ne v1, v2, :cond_1

    .line 229
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->blockedNumbersMigratorForTest:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    .line 231
    new-instance v3, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;-><init>(Landroid/content/ContentResolver;)V

    .line 230
    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    .line 232
    new-instance v3, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;)V

    .line 230
    invoke-virtual {v2, v3}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->migrate(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 115
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 179
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 181
    const-string/jumbo v0, "country_iso"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 182
    const-string/jumbo v0, "number"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 183
    const-string/jumbo v0, "normalized_number"

    const/4 v1, 0x3

    aput-object v0, v3, v1

    .line 185
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v7, "type=1"

    .line 187
    .local v7, "selection":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    .line 188
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    .line 189
    const-string/jumbo v4, "type=1"

    move-object v6, v5

    .line 187
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const v0, 0x7f040024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 109
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    invoke-virtual {v0, p2}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 195
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v8, 0x7f0e00a2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 122
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 126
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a02db

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 125
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 127
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 129
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 130
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 131
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 132
    const v2, 0x7f0d02e3

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 137
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->migratePromoView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->blockedNumbersText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mImportSettings:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const v3, 0x7f0e009c

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const v3, 0x7f0e009d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_0
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v2

    .line 161
    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->asyncUpdate()V

    .line 121
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$1;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;)V

    .line 149
    invoke-static {v2, v3}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->checkForSendToVoicemailContact(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onVisualVoicemailEnabledStatusChanged(Z)V
    .locals 0
    .param p1, "newStatus"    # Z

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->updateActiveVoicemailProvider()V

    .line 245
    return-void
.end method

.method setBlockedNumbersMigratorForTest(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;)V
    .locals 0
    .param p1, "blockedNumbersMigrator"    # Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->blockedNumbersMigratorForTest:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    .line 261
    return-void
.end method
