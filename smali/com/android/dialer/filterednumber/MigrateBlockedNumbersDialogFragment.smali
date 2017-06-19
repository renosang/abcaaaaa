.class public Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;
.super Landroid/app/DialogFragment;
.source "MigrateBlockedNumbersDialogFragment.java"


# instance fields
.field private mBlockedNumbersMigrator:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

.field private mMigrationListener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->mBlockedNumbersMigrator:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->mMigrationListener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->newPositiveButtonOnClickListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)Landroid/app/DialogFragment;
    .locals 2
    .param p0, "blockedNumbersMigrator"    # Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;
    .param p1, "migrationListener"    # Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    .prologue
    .line 52
    new-instance v0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;-><init>()V

    .line 53
    .local v0, "fragment":Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    iput-object v1, v0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->mBlockedNumbersMigrator:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    .line 54
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    iput-object v1, v0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->mMigrationListener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    .line 55
    return-object v0
.end method

.method private newPositiveButtonOnClickListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 86
    new-instance v0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;-><init>(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 61
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const v2, 0x7f0d0299

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    const v2, 0x7f0d029a

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    const v2, 0x7f0d029b

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 65
    const v2, 0x7f0d029c

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$1;-><init>(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 77
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->dismiss()V

    .line 106
    iput-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->mBlockedNumbersMigrator:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    .line 107
    iput-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->mMigrationListener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    .line 108
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 103
    return-void
.end method
