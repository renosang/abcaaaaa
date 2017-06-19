.class Lcom/android/contacts/common/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/common/list/ContactListFilterController;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingChangedObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;Lcom/android/contacts/common/list/ContactListFilter;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterController;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    .line 188
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;-><init>(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mSettingChangedObserver:Landroid/database/ContentObserver;

    .line 92
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->checkFilterValidity(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/contacts/common/ContactsSettings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mSettingChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method private filterAccountExists()Z
    .locals 5

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 183
    .local v0, "accountTypeManager":Lcom/android/contacts/common/model/AccountTypeManager;
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 184
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 183
    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v1, "filterAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->contains(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z

    move-result v2

    return v2
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    .line 149
    .local v0, "listener":Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    .line 147
    .end local v0    # "listener":Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V
    .locals 2
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "persistent"    # Z
    .param p3, "notifyListeners"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 129
    if-eqz p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 2
    .param p1, "notifyListeners"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    sparse-switch v0, :sswitch_data_0

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 164
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 169
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->filterAccountExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const/4 v0, -0x2

    .line 172
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 173
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, -0x3

    .line 143
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 144
    const/4 v1, 0x1

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    .line 142
    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 1
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "persistent"    # Z

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    .line 121
    return-void
.end method
