.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.super Landroid/app/Activity;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;,
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;,
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;,
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;,
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;,
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;,
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_SET_LOADER_ID:I = 0x1

.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field private static final SYNC_MODE_EVERYTHING:I = 0x2

.field private static final SYNC_MODE_UNGROUPED:I = 0x1

.field private static final SYNC_MODE_UNSUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CustomContactListFilterActivity"

.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/CustomContactListFilterActivity;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 423
    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 880
    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->-get0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->finish()V

    .line 882
    return-void

    .line 885
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->setResult(I)V

    .line 887
    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->-get0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 888
    .local v0, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->finish()V

    .line 890
    return-void

    .line 893
    :cond_2
    new-instance v1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 879
    return-void
.end method


# virtual methods
.method protected getSyncMode(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;)I
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .prologue
    .line 777
    const-string/jumbo v0, "com.google"

    iget-object v1, p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x2

    return v0

    .line 780
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRemoveSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    .param p2, "child"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .param p3, "syncMode"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 829
    iget-object v3, p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    .line 830
    .local v2, "shouldSyncUngrouped":Z
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    if-eqz v2, :cond_0

    .line 831
    iget-object v3, p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p2, v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    :cond_0
    invoke-virtual {p1, p2, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 851
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 828
    :goto_0
    return-void

    .line 833
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 835
    aput-object p4, v3, v4

    const v4, 0x7f0d0172

    .line 834
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "removeMessage":Ljava/lang/CharSequence;
    const v3, 0x7f0d016f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 837
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 838
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 839
    new-instance v3, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;-><init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 847
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 754
    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 756
    .local v1, "checkbox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 757
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 758
    .local v2, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_0

    .line 759
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 760
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    .line 765
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 766
    const/4 v3, 0x1

    return v3

    .line 763
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e010c

    if-ne v0, v1, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->doSaveAction()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e010b

    if-ne v0, v1, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v2, 0x7f04003d

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->setContentView(I)V

    .line 97
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    .line 98
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    new-instance v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0e010c

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f0e010b

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 110
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 113
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 787
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 790
    instance-of v6, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v4, p3

    .line 792
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 793
    .local v4, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 794
    .local v3, "groupPosition":I
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 797
    .local v2, "childPosition":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    return-void

    .line 799
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 800
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 803
    .local v1, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->getSyncMode(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;)I

    move-result v5

    .line 804
    .local v5, "syncMode":I
    if-nez v5, :cond_2

    return-void

    .line 806
    :cond_2
    if-eqz v1, :cond_3

    .line 807
    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;I)V

    .line 786
    :goto_0
    return-void

    .line 809
    :cond_3
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;I)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "none":I
    const-string/jumbo v2, ""

    const v3, 0x102002b

    invoke-interface {p1, v0, v3, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 962
    .local v1, "save":Landroid/view/MenuItem;
    const v2, 0x7f02017d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 963
    const v2, 0x7f0d0174

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 964
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 965
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .param p2, "data"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;",
            ">;",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V

    .line 231
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V

    .line 236
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 970
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 982
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 973
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->setResult(I)V

    .line 974
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->finish()V

    .line 975
    return v1

    .line 977
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->doSaveAction()V

    .line 978
    return v1

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x102002b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 220
    return-void
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;I)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "syncMode"    # I

    .prologue
    .line 856
    const v3, 0x7f0d0170

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 859
    iget-object v3, p2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 860
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 862
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;-><init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 855
    .end local v0    # "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;I)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "child"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .param p4, "syncMode"    # I

    .prologue
    .line 815
    invoke-virtual {p3, p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 817
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 818
    const v0, 0x7f0d016f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 819
    new-instance v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;-><init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    .line 818
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 814
    return-void
.end method
