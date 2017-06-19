.class final Lcom/android/dialer/compat/FilteredNumberCompat$1;
.super Ljava/lang/Object;
.source "FilteredNumberCompat.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/compat/FilteredNumberCompat;->newMigrationListener(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$displayNumber:Ljava/lang/String;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$parentViewId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V
    .locals 0
    .param p1, "val$contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "val$number"    # Ljava/lang/String;
    .param p3, "val$countryIso"    # Ljava/lang/String;
    .param p4, "val$displayNumber"    # Ljava/lang/String;
    .param p5, "val$parentViewId"    # Ljava/lang/Integer;
    .param p6, "val$fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "val$callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$countryIso:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$displayNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$parentViewId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$fragmentManager:Landroid/app/FragmentManager;

    iput-object p7, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 9

    .prologue
    .line 294
    const-string/jumbo v0, "FilteredNumberCompat"

    const-string/jumbo v1, "showBlockNumberDialogFlow - listener showing block number dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const-string/jumbo v0, "FilteredNumberCompat"

    const-string/jumbo v1, "showBlockNumberDialogFlow - migration failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 305
    :cond_0
    new-instance v8, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iget-object v0, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v8, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 306
    new-instance v0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;

    iget-object v2, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$countryIso:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$displayNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$parentViewId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$fragmentManager:Landroid/app/FragmentManager;

    iget-object v7, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;-><init>(Lcom/android/dialer/compat/FilteredNumberCompat$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 319
    iget-object v1, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1;->val$countryIso:Ljava/lang/String;

    .line 305
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    return-void
.end method
