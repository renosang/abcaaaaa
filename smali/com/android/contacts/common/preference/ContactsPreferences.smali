.class public Lcom/android/contacts/common/preference/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# static fields
.field public static final CONTACT_METADATA_AUTHORITY:Ljava/lang/String; = "com.android.contacts.metadata"

.field public static final DISPLAY_ORDER_ALTERNATIVE:I = 0x2

.field public static final DISPLAY_ORDER_KEY:Ljava/lang/String; = "android.contacts.DISPLAY_ORDER"

.field public static final DISPLAY_ORDER_PRIMARY:I = 0x1

.field public static final DO_NOT_SYNC_CONTACT_METADATA_MSG:Ljava/lang/String; = "Do not sync metadata"

.field public static final ONLY_CLEAR_DONOT_SYNC:Ljava/lang/String; = "only_clear_donot_sync"

.field private static final PREFERENCE_UNASSIGNED:I = -0x1

.field public static final PREF_DISPLAY_ONLY_PHONES:Ljava/lang/String; = "only_phones"

.field public static final PREF_DISPLAY_ONLY_PHONES_DEFAULT:Z = false

.field public static final SHOULD_CLEAR_METADATA_BEFORE_SYNCING:Ljava/lang/String; = "should_clear_metadata_before_syncing"

.field public static final SORT_ORDER_ALTERNATIVE:I = 0x2

.field public static final SORT_ORDER_KEY:Ljava/lang/String; = "android.contacts.SORT_ORDER"

.field public static final SORT_ORDER_PRIMARY:I = 0x1


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAccount:Ljava/lang/String;

.field private mDefaultAccountKey:Ljava/lang/String;

.field private mDefaultAccountSavedKey:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mIsPhoneNumbersOnly:Z

.field private mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 93
    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 95
    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 107
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 110
    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 111
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    const v1, 0x7f0d0094

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const v1, 0x7f0d0095

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountSavedKey:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->maybeMigrateSystemSettings()V

    .line 118
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences$1;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContentObserver:Landroid/database/ContentObserver;

    .line 106
    return-void
.end method

.method private getContactMetadataSyncAccount()Landroid/accounts/Account;
    .locals 4

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getFocusGoogleAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 269
    .local v0, "account":Landroid/accounts/Account;
    const-string/jumbo v2, "com.android.contacts.metadata"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 270
    const-string/jumbo v2, "com.android.contacts.metadata"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 269
    if-eqz v2, :cond_0

    .line 271
    return-object v0

    .line 274
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getFocusGoogleAccounts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v4, "focusGoogleAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    .line 315
    .local v2, "accountTypeManager":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 316
    .local v3, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 317
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string/jumbo v5, "com.google"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return-object v4
.end method

.method private maybeMigrateSystemSettings()V
    .locals 5

    .prologue
    .line 418
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 421
    .local v2, "previousPrefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "defaultAccount":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    invoke-static {v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 425
    .local v0, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 395
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "defaultAccount":Ljava/lang/String;
    .end local v2    # "previousPrefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private requestMetadataSyncForAccount(Ljava/lang/String;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 282
    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getFocusGoogleAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 283
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "should_clear_metadata_before_syncing"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    const-string/jumbo v3, "only_clear_donot_sync"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string/jumbo v3, "force"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    const-string/jumbo v3, "expedited"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string/jumbo v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    const-string/jumbo v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 293
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v3, "com.android.contacts.metadata"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const-string/jumbo v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 299
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string/jumbo v3, "force"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    const-string/jumbo v3, "expedited"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-string/jumbo v3, "should_clear_metadata_before_syncing"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    const-string/jumbo v3, "only_clear_donot_sync"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    const-string/jumbo v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 281
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_2
    return-void
.end method


# virtual methods
.method public getContactMetadataSyncAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getContactMetadataSyncAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 258
    .local v0, "syncAccount":Landroid/accounts/Account;
    if-nez v0, :cond_0

    const-string/jumbo v1, "Do not sync metadata"

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultAccount()Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDefaultAccountUserChangeable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    return-object v2

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 234
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 233
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "accountString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    invoke-static {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    .line 238
    .local v1, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v2, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 241
    .end local v0    # "accountString":Ljava/lang/String;
    .end local v1    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    return-object v2
.end method

.method public getDefaultDisplayOrder()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDisplayOrder()I
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    return v0

    .line 182
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/contacts/common/ContactsSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 188
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    return v0
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    return v0

    .line 145
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/contacts/common/ContactsSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 151
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    return v0
.end method

.method public isDefaultAccountUserChangeable()Z
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "only_phones"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/contacts/common/ContactsSettings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mIsPhoneNumbersOnly:Z

    .line 209
    iget-boolean v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mIsPhoneNumbersOnly:Z

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences$2;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences$2;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method

.method public refreshValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 371
    const-string/jumbo v0, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 373
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 381
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-interface {v0}, Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;->onChange()V

    .line 370
    :cond_1
    return-void

    .line 374
    :cond_2
    const-string/jumbo v0, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 376
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iput-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 325
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 327
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 331
    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 332
    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 333
    iput-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/contacts/common/ContactsSettings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    return-void
.end method

.method public setContactMetadataSyncAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v0, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 264
    .local v0, "mContactMetadataSyncAccount":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->requestMetadataSyncForAccount(Ljava/lang/String;)V

    .line 261
    return-void

    .line 263
    .end local v0    # "mContactMetadataSyncAccount":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v1, 0x0

    .line 245
    if-nez p1, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountSavedKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void

    .line 245
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    goto :goto_0

    .line 250
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public setDisplayOrder(I)V
    .locals 2
    .param p1, "displayOrder"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/contacts/common/ContactsSettings;->commit(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 191
    return-void
.end method

.method public setPhoneNumbersOnly(Z)V
    .locals 2
    .param p1, "phoneNumbersOnly"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mIsPhoneNumbersOnly:Z

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "only_phones"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/contacts/common/ContactsSettings;->commit(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 212
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .param p1, "sortOrder"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/contacts/common/ContactsSettings;->commit(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 154
    return-void
.end method

.method public unregisterChangeListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    .line 343
    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 341
    return-void
.end method
