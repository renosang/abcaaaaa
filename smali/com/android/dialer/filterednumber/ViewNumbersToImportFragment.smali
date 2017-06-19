.class public Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;
.super Landroid/app/ListFragment;
.source "ViewNumbersToImportFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;->newViewNumbersToImportAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    invoke-virtual {p0, v0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e009c

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment$1;-><init>(Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;)V

    .line 120
    invoke-static {v0, v1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e020a

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 69
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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

    .line 97
    new-instance v0, Landroid/content/CursorLoader;

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    sget-object v3, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    .line 101
    const-string/jumbo v4, "send_to_voicemail=1"

    move-object v6, v5

    .line 97
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v0, 0x7f0400e8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 63
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 109
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    invoke-virtual {v0, p2}, Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 108
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 114
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const v1, 0x7f0d02e6

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e020a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e009c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method
