.class public Lcom/android/dialer/compat/FilteredNumberCompat;
.super Ljava/lang/Object;
.source "FilteredNumberCompat.java"


# static fields
.field private static contextForTest:Landroid/content/Context;

.field private static isEnabledForTest:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAttemptBlockOperations(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 347
    invoke-static {v0}, Lcom/android/dialer/compat/UserManagerCompat;->isSystemUser(Landroid/os/UserManager;)Z

    move-result v0

    return v0

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/compat/BlockedNumbersSdkCompat;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canCurrentUserOpenBlockSettings(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 366
    invoke-static {v0}, Lcom/android/dialer/compat/UserManagerCompat;->isSystemUser(Landroid/os/UserManager;)Z

    move-result v0

    return v0

    .line 370
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/compat/BlockedNumbersSdkCompat;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canUseNewFiltering()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/android/dialer/compat/FilteredNumberCompat;->isEnabledForTest:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 129
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/dialer/compat/FilteredNumberCompat;->isEnabledForTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    return v0

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/android/dialerbind/ObjectFactory;->isNewBlockingEnabled(Landroid/content/Context;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public static createManageBlockedNumbersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 332
    invoke-static {v0}, Lcom/android/contacts/common/compat/TelecomManagerUtil;->createManageBlockedNumbersIntent(Landroid/telecom/TelecomManager;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 335
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static filter([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "projection"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 212
    if-nez p0, :cond_0

    .line 213
    return-object v2

    .line 215
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 217
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "column":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/compat/BlockedNumbersSdkCompat;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getContentUri(Ljava/lang/Integer;)Landroid/net/Uri;
    .locals 4
    .param p0, "id"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryIsoColumnName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "country_iso"

    goto :goto_0
.end method

.method public static getE164NumberColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "e164_number"

    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string/jumbo v0, "normalized_number"

    goto :goto_0
.end method

.method public static getIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_id"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "_id"

    goto :goto_0
.end method

.method public static getOriginalNumberColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "original_number"

    :goto_0
    return-object v0

    .line 103
    :cond_0
    const-string/jumbo v0, "number"

    goto :goto_0
.end method

.method public static getSourceColumnName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "source"

    goto :goto_0
.end method

.method public static getTypeColumnName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "type"

    goto :goto_0
.end method

.method public static hasMigratedToNewBlocking()Z
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "migratedToNewBlocking"

    const/4 v2, 0x0

    .line 148
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static newBlockNumberContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "e164Number"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "countryIso"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 235
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getOriginalNumberColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    if-nez p1, :cond_0

    .line 239
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_0
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getE164NumberColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getCountryIsoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getTypeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getSourceColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    :cond_1
    return-object v0
.end method

.method private static newMigrationListener(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "displayNumber"    # Ljava/lang/String;
    .param p4, "parentViewId"    # Ljava/lang/Integer;
    .param p5, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p6, "callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 291
    new-instance v0, Lcom/android/dialer/compat/FilteredNumberCompat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/compat/FilteredNumberCompat$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    return-object v0
.end method

.method public static setContextForTest(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 172
    sput-object p0, Lcom/android/dialer/compat/FilteredNumberCompat;->contextForTest:Landroid/content/Context;

    .line 171
    return-void
.end method

.method public static setHasMigratedToNewBlocking(Z)V
    .locals 2
    .param p0, "hasMigrated"    # Z
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/android/dialer/compat/FilteredNumberCompat;->contextForTest:Landroid/content/Context;

    invoke-static {}, Lcom/android/dialer/DialerApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 160
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "migratedToNewBlocking"

    .line 160
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    return-void
.end method

.method public static setIsEnabledForTest(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "isEnabled"    # Ljava/lang/Boolean;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 167
    sput-object p0, Lcom/android/dialer/compat/FilteredNumberCompat;->isEnabledForTest:Ljava/lang/Boolean;

    .line 166
    return-void
.end method

.method private static shouldShowMigrationDialog(Z)Z
    .locals 2
    .param p0, "isBlocking"    # Z

    .prologue
    const/4 v0, 0x0

    .line 284
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showBlockNumberDialogFlow(Landroid/content/ContentResolver;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "blockId"    # Ljava/lang/Integer;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "displayNumber"    # Ljava/lang/String;
    .param p5, "parentViewId"    # Ljava/lang/Integer;
    .param p6, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    const-string/jumbo v0, "FilteredNumberCompat"

    const-string/jumbo v1, "showBlockNumberDialogFlow - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/dialer/compat/FilteredNumberCompat;->shouldShowMigrationDialog(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const-string/jumbo v0, "FilteredNumberCompat"

    const-string/jumbo v1, "showBlockNumberDialogFlow - showing migration dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v7, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    invoke-direct {v7, p0}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;-><init>(Landroid/content/ContentResolver;)V

    .line 272
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 271
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/compat/FilteredNumberCompat;->newMigrationListener(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    move-result-object v0

    .line 270
    invoke-static {v7, v0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->newInstance(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "MigrateBlockedNumbers"

    .line 270
    invoke-virtual {v0, p6, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    const-string/jumbo v0, "FilteredNumberCompat"

    const-string/jumbo v1, "showBlockNumberDialogFlow - showing block number dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static/range {p1 .. p7}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 264
    return-void
.end method

.method public static useNewFiltering()Z
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
