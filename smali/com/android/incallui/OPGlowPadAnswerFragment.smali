.class public Lcom/android/incallui/OPGlowPadAnswerFragment;
.super Lcom/android/incallui/AnswerFragment;
.source "OPGlowPadAnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;
.implements Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;


# instance fields
.field public isSlideAnswer:Z

.field isVisibility:Z

.field private mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

.field private mOPBottomLayout:Lcom/android/incallui/oneplus/OPBottomLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;-><init>()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->isVisibility:Z

    .line 43
    return-void
.end method

.method private silenceRinger()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 351
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->hideInCallScreen()V

    .line 355
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 348
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    return-void
.end method


# virtual methods
.method public Answer(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->isSlideAnswer:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 311
    return-void
.end method

.method public Decline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    .line 317
    return-void
.end method

.method public hideInCallScreen()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->silenceRinger()V

    .line 344
    return-void
.end method

.method public ignore()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->hideInCallScreen()V

    .line 327
    return-void
.end method

.method public messageText()V
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    .line 322
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v1, 0x7f040092

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0e0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPAnswerLayout;

    iput-object v1, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    .line 52
    iget-object v1, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v1, p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->setFunctionListner(Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;)V

    .line 53
    iget-object v1, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v1}, Lcom/android/incallui/oneplus/OPAnswerLayout;->restartAnimation()V

    .line 54
    const v1, 0x7f0e019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPBottomLayout;

    iput-object v1, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mOPBottomLayout:Lcom/android/incallui/oneplus/OPBottomLayout;

    .line 55
    iget-object v1, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mOPBottomLayout:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-virtual {v1, p0}, Lcom/android/incallui/oneplus/OPBottomLayout;->setFunctionListner(Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->updateViews()V

    .line 57
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->reset()V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/AnswerFragment;->onDestroyView()V

    .line 77
    return-void
.end method

.method protected onMessageDialogCancel()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/incallui/AnswerFragment;->onResume()V

    .line 71
    return-void
.end method

.method public onShowAnswerUi(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Show answer UI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    if-eqz p1, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->restartAnimation()V

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v0

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/incallui/OPCallCardFragment;->setCallButtonsVisible(Z)V

    .line 92
    :cond_1
    return-void

    .line 96
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->reset()V

    .line 102
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mOPBottomLayout:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomLayout;->reset()V

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->dismissPendingDialogs()V

    goto :goto_1

    .line 106
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->isSlideAnswer:Z

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->onShowAnswerUi(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->reset()V

    .line 338
    return-void
.end method

.method public showTargets(I)V
    .locals 1
    .param p1, "targetSet"    # I

    .prologue
    .line 123
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->showTargets(II)V

    .line 122
    return-void
.end method

.method public showTargets(II)V
    .locals 0
    .param p1, "targetSet"    # I
    .param p2, "videoState"    # I

    .prologue
    .line 132
    return-void
.end method

.method public updateMessageView(Z)V
    .locals 1
    .param p1, "withSms"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mOPBottomLayout:Lcom/android/incallui/oneplus/OPBottomLayout;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mOPBottomLayout:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->updateMessageView(Z)V

    .line 332
    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 5

    .prologue
    .line 361
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->isVisibility:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 364
    .local v1, "configs":Landroid/content/res/Configuration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screenHeightDp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v4, 0xfa

    if-ge v3, v4, :cond_1

    .line 366
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->isVisibility:Z

    .line 367
    iget-object v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 369
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 370
    .local v2, "layoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 371
    iget-object v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v3, v2}, Lcom/android/incallui/oneplus/OPAnswerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .end local v0    # "bottom":I
    .end local v1    # "configs":Landroid/content/res/Configuration;
    .end local v2    # "layoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 374
    .restart local v1    # "configs":Landroid/content/res/Configuration;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/OPGlowPadAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 376
    .restart local v0    # "bottom":I
    iget-object v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 377
    .restart local v2    # "layoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 378
    iget-object v3, p0, Lcom/android/incallui/OPGlowPadAnswerFragment;->mAnswerLayout:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v3, v2}, Lcom/android/incallui/oneplus/OPAnswerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
