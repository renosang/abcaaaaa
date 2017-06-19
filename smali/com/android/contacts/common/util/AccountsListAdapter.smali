.class public final Lcom/android/contacts/common/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    }
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCustomLayout:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .param p3, "currentAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mCustomLayout:I

    .line 69
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 71
    invoke-direct {p0, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 72
    if-eqz p3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v0, p3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getAccounts(Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 7
    .param p1, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 82
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v5, :cond_0

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 86
    sget-object v6, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-eq p1, v6, :cond_1

    .line 87
    sget-object v6, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v6, :cond_3

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    sget-object v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v4, :cond_5

    .line 91
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 92
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string/jumbo v4, "com.android.sim"

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v2    # "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v3    # "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 95
    .restart local v1    # "account$iterator":Ljava/util/Iterator;
    .restart local v2    # "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v3    # "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 97
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    :cond_5
    return-object v3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 106
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 110
    .local v4, "resultView":Landroid/view/View;
    :goto_0
    const v7, 0x1020014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 111
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 112
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 114
    .local v3, "icon":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 115
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 117
    .local v2, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const-string/jumbo v7, "PHONE"

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/common/model/account/PhoneAccountType;->getPhoneAccountDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "accountName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 132
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-object v4

    .line 107
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "resultView":Landroid/view/View;
    .end local v5    # "text1":Landroid/widget/TextView;
    .end local v6    # "text2":Landroid/widget/TextView;
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mCustomLayout:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mCustomLayout:I

    :goto_2
    invoke-virtual {v8, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 108
    :cond_1
    const v7, 0x7f04001d

    goto :goto_2

    .line 126
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .restart local v2    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "resultView":Landroid/view/View;
    .restart local v5    # "text1":Landroid/widget/TextView;
    .restart local v6    # "text2":Landroid/widget/TextView;
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .restart local v1    # "accountName":Ljava/lang/String;
    goto :goto_1
.end method

.method public setCustomLayout(I)V
    .locals 0
    .param p1, "customLayout"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mCustomLayout:I

    .line 100
    return-void
.end method
