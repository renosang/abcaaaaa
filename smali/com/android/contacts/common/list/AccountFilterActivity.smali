.class public Lcom/android/contacts/common/list/AccountFilterActivity;
.super Landroid/app/Activity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;,
        Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;
    }
.end annotation


# static fields
.field private static final FILTER_LOADER_ID:I = 0x0

.field public static final KEY_EXTRA_CONTACT_LIST_FILTER:Ljava/lang/String; = "contactListFilter"

.field public static final KEY_EXTRA_CURRENT_FILTER:Ljava/lang/String; = "currentFilter"

.field private static final SUBACTIVITY_CUSTOMIZE_FILTER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mCustomFilterView:Lcom/android/contacts/common/list/ContactListFilterView;

.field private mIsCustomFilterViewSelected:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/list/AccountFilterActivity;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 117
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 118
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    .local v2, "accountFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 120
    .local v4, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v5

    .line 121
    .local v5, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 122
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    .line 123
    .local v3, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->isExtension()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 127
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 129
    :goto_1
    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 128
    invoke-static {v9, v10, v11, v7}, Lcom/android/contacts/common/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    const/4 v7, 0x0

    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 134
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v3    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v9, -0x2

    .line 133
    invoke-static {v9}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 137
    .local v6, "count":I
    if-lt v6, v12, :cond_5

    .line 139
    if-le v6, v12, :cond_4

    .line 140
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_4
    const/4 v9, -0x3

    .line 142
    invoke-static {v9}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_5
    return-object v8
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 198
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCustomFilterView:Lcom/android/contacts/common/list/ContactListFilterView;

    if-eqz v2, :cond_0

    .line 199
    iget-boolean v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsCustomFilterViewSelected:Z

    if-eqz v2, :cond_1

    .line 204
    :cond_0
    if-eq p2, v3, :cond_2

    .line 205
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCustomFilterView:Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    .line 201
    return-void

    .line 208
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 210
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x3

    .line 211
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 213
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const-string/jumbo v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f04003c

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setContentView(I)V

    .line 74
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 75
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "currentFilter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v2, p0, v4}, Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/common/list/AccountFilterActivity;Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 70
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    move-object v2, p2

    .line 172
    check-cast v2, Lcom/android/contacts/common/list/ContactListFilterView;

    .line 173
    .local v2, "listFilterView":Lcom/android/contacts/common/list/ContactListFilterView;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 174
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget v3, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    .line 176
    iput-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCustomFilterView:Lcom/android/contacts/common/list/ContactListFilterView;

    .line 177
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterView;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsCustomFilterViewSelected:Z

    .line 178
    new-instance v1, Landroid/content/Intent;

    .line 179
    const-class v3, Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    .line 178
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    .line 184
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactListFilterView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/common/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    :goto_0
    return-void

    .line 187
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    .line 188
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactListFilterView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "contactListFilter"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->onBackPressed()V

    .line 277
    const/4 v0, 0x1

    return v0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
