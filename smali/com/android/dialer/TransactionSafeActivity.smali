.class public abstract Lcom/android/dialer/TransactionSafeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TransactionSafeActivity.java"


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/dialer/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 43
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 49
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 37
    return-void
.end method
