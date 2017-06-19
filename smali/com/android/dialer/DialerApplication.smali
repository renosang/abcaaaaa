.class public Lcom/android/dialer/DialerApplication;
.super Landroid/app/Application;
.source "DialerApplication.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/android/dialer/DialerApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setContextForTest(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 56
    sput-object p0, Lcom/android/dialer/DialerApplication;->sContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 38
    sput-object p0, Lcom/android/dialer/DialerApplication;->sContext:Landroid/content/Context;

    .line 39
    const-string/jumbo v0, "DialerApplication onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    const-string/jumbo v0, "DialerApplication ExtensionsFactory initialization"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/dialer/DialerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    new-instance v0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/DialerApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 44
    invoke-direct {v0, v1, v2}, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;-><init>(Landroid/content/SharedPreferences;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;)V

    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->autoMigrate()V

    .line 46
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    return-void
.end method
