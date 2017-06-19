.class public Lcom/android/contacts/common/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/contacts/common/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 3
    .param p0, "filterController"    # Lcom/android/contacts/common/list/ContactListFilterController;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 163
    const-string/jumbo v1, "contactListFilter"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 164
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->selectCustomFilter()V

    .line 160
    .end local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :cond_1
    :goto_0
    return-void

    .line 170
    .restart local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "currentFilter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "com.android.contacts.common.list.AccountFilterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "currentFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    return-void
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "currentFilter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.contacts"

    const-string/jumbo v3, "com.android.contacts.common.list.AccountFilterActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v2, "currentFilter"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v2, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getActivity() returned null. Ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z
    .locals 9
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z
    .param p3, "forPhone"    # Z

    .prologue
    const v8, 0x7f0d0176

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v4, -0x3

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f0e008b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "headerTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 69
    .local v2, "textWasSet":Z
    if-eqz p1, :cond_9

    .line 70
    if-eqz p3, :cond_4

    .line 71
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_1

    .line 72
    if-eqz p2, :cond_0

    .line 73
    const v3, 0x7f0d012d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 74
    const/4 v2, 0x1

    .line 109
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 77
    new-array v3, v7, [Ljava/lang/Object;

    .line 78
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 77
    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_3

    .line 81
    const v3, 0x7f0d0177

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :cond_3
    sget-object v3, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Filter type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" isn\'t expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_4
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_5

    .line 88
    if-eqz p2, :cond_0

    .line 89
    const v3, 0x7f0d0169

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 92
    :cond_5
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_6

    .line 93
    new-array v3, v7, [Ljava/lang/Object;

    .line 94
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 93
    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 96
    :cond_6
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_7

    .line 97
    const v3, 0x7f0d0177

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    :cond_7
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_8

    .line 100
    const v3, 0x7f0d0178

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 101
    const/4 v2, 0x1

    goto :goto_0

    .line 103
    :cond_8
    sget-object v3, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Filter type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" isn\'t expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    :cond_9
    sget-object v3, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Filter is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 57
    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method
