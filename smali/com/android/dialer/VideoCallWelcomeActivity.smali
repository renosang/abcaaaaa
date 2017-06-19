.class public Lcom/android/dialer/VideoCallWelcomeActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "VideoCallWelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConfirmRepeat:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/dialer/VideoCallWelcomeActivity;->mConfirmRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 68
    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->setShowingState(Landroid/content/Context;Z)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/VideoCallWelcomeActivity;->finish()V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/android/dialer/VideoCallWelcomeActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 54
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 55
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/dialer/VideoCallWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 56
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/dialer/VideoCallWelcomeActivity;->mConfirmRepeat:Landroid/widget/CheckBox;

    .line 59
    iget-object v1, p0, Lcom/android/dialer/VideoCallWelcomeActivity;->mConfirmRepeat:Landroid/widget/CheckBox;

    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->canShowWelcomeScreen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/android/dialer/VideoCallWelcomeActivity;->setupAlert()V

    .line 50
    return-void
.end method
