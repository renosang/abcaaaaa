.class public Lcom/android/contacts/common/preference/DefaultAccountPreference;
.super Landroid/preference/ListPreference;
.source "DefaultAccountPreference.java"


# instance fields
.field private mAccountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->prepare()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->prepare()V

    .line 43
    return-void
.end method

.method private prepare()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 49
    new-instance v7, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 50
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 52
    .local v4, "accountTypeManager":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v4, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v5

    .line 53
    .local v5, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 54
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v7, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 57
    .local v2, "accountNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 58
    .local v3, "accountNamesArray":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 60
    iget-object v7, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v7}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "defaultAccount":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 62
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v7, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    .line 48
    :goto_1
    return-void

    .line 63
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    invoke-virtual {p0, v6}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 97
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 82
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    return v2

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->notifyChanged()V

    .line 90
    :goto_0
    return v2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
