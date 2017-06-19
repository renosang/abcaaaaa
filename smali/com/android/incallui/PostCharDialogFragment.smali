.class public Lcom/android/incallui/PostCharDialogFragment;
.super Landroid/app/DialogFragment;
.source "PostCharDialogFragment.java"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mPostDialStr:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/PostCharDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 85
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 52
    iget-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 53
    const-string/jumbo v3, "CALL_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    .line 54
    const-string/jumbo v3, "POST_CHARS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0380

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v3, Lcom/android/incallui/PostCharDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/PostCharDialogFragment$1;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    const v4, 0x7f0d0383

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    new-instance v3, Lcom/android/incallui/PostCharDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/PostCharDialogFragment$2;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    const v4, 0x7f0d0384

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 78
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string/jumbo v0, "CALL_ID"

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "POST_CHARS"

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
