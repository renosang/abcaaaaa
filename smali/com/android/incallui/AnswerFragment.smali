.class public abstract Lcom/android/incallui/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;"
    }
.end annotation


# instance fields
.field private mCannedResponsePopup:Landroid/app/Dialog;

.field private mCustomMessagePopup:Landroid/app/AlertDialog;

.field private final mSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/incallui/AnswerFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 86
    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    .line 45
    return-void
.end method

.method private dismissCustomMessagePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 157
    :cond_0
    return-void
.end method

.method private isCannedResponsePopupShowing()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCustomMessagePopupShowing()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    const v2, 0x7f0d03e6

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissCannedResponsePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 147
    :cond_0
    return-void
.end method

.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCannedResponsePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCustomMessagePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    .line 164
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 99
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingDialogs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 2
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnswer videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 260
    return-void
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method public onDeclineUpgradeRequest(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 269
    return-void
.end method

.method public onDeflect(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onDeflect(Landroid/content/Context;)V

    .line 277
    return-void
.end method

.method protected onMessageDialogCancel()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onShowAnswerUi(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 309
    return-void
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    .line 273
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public showCustomMessageDialog()V
    .locals 6

    .prologue
    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "et":Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 187
    new-instance v4, Lcom/android/incallui/AnswerFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/android/incallui/AnswerFragment$2;-><init>(Lcom/android/incallui/AnswerFragment;Landroid/widget/EditText;)V

    .line 186
    const v5, 0x7f0d03e8

    .line 185
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 198
    new-instance v4, Lcom/android/incallui/AnswerFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/AnswerFragment$3;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 197
    const v5, 0x7f0d03e7

    .line 185
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 205
    new-instance v4, Lcom/android/incallui/AnswerFragment$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/AnswerFragment$4;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 185
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 212
    const v4, 0x7f0d03e6

    .line 185
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 216
    new-instance v3, Lcom/android/incallui/AnswerFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$5;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 235
    const/4 v4, 0x5

    .line 234
    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 236
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 237
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 240
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 241
    .local v2, "sendButton":Landroid/widget/Button;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method public showMessageDialog()V
    .locals 7

    .prologue
    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 107
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    const v5, 0x1090003

    const v6, 0x1020014

    .line 106
    invoke-direct {v2, v3, v5, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 109
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    new-instance v2, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 114
    new-instance v3, Lcom/android/incallui/AnswerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$1;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 113
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 123
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 124
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 103
    return-void
.end method

.method public showTargets(I)V
    .locals 0
    .param p1, "targetSet"    # I

    .prologue
    .line 313
    return-void
.end method

.method public updateMessageView(Z)V
    .locals 0
    .param p1, "withSms"    # Z

    .prologue
    .line 327
    return-void
.end method

.method public updateViews()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method
