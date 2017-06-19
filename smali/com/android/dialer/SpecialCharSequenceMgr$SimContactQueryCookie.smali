.class Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field private mHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field private textField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(ILcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;I)V
    .locals 0
    .param p1, "number"    # I
    .param p2, "handler"    # Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .param p3, "token"    # I

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput p1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 543
    iput-object p2, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 544
    iput p3, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    .line 541
    return-void
.end method


# virtual methods
.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 573
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;

    .line 576
    iget-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    iget v1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 565
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "text"    # Landroid/widget/EditText;

    .prologue
    monitor-enter p0

    .line 558
    :try_start_0
    iput-object p1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 557
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
