.class public Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;
.super Ljava/lang/Object;
.source "BlockedNumbersAutoMigrator.java"


# instance fields
.field private final queryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "queryHandler"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iput-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->queryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 52
    return-void
.end method

.method private shouldAttemptAutoMigrate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "checkedAutoMigrate"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Not attempting auto-migrate: already checked once."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v2

    .line 87
    :cond_0
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Updating state as already checked for auto-migrate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "checkedAutoMigrate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Not attempting auto-migrate: not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v2

    .line 95
    :cond_1
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Not attempting auto-migrate: already migrated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 99
    :cond_2
    return v3
.end method


# virtual methods
.method public autoMigrate()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->shouldAttemptAutoMigrate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Attempting to auto-migrate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->queryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    new-instance v1, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator$1;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->hasBlockedNumbers(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V

    .line 63
    return-void
.end method
