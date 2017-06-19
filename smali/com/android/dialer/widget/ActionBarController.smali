.class public Lcom/android/dialer/widget/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/ActionBarController$1;,
        Lcom/android/dialer/widget/ActionBarController$ActivityUi;
    }
.end annotation


# instance fields
.field private mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

.field private final mFadeOutCallback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

.field private mIsActionBarSlidUp:Z

.field private mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/widget/ActionBarController;)Lcom/android/dialer/widget/ActionBarController$ActivityUi;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/dialer/widget/ActionBarController$ActivityUi;Lcom/android/dialer/widget/SearchEditTextLayout;)V
    .locals 1
    .param p1, "activityUi"    # Lcom/android/dialer/widget/ActionBarController$ActivityUi;
    .param p2, "searchBox"    # Lcom/android/dialer/widget/SearchEditTextLayout;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/dialer/widget/ActionBarController$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/widget/ActionBarController$1;-><init>(Lcom/android/dialer/widget/ActionBarController;)V

    iput-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mFadeOutCallback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    .line 67
    iput-object p1, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    .line 68
    iput-object p2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    .line 66
    return-void
.end method


# virtual methods
.method public getIsActionBarSlidUp()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    return v0
.end method

.method public isActionBarShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-boolean v1, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDialpadDown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisible(Z)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    .line 132
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    .line 117
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->fadeIn()V

    goto :goto_0
.end method

.method public onDialpadUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, v1, v1}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    .line 143
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mFadeOutCallback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->fadeOut(Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    goto :goto_0
.end method

.method public onSearchBoxTapped()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    .line 81
    :cond_0
    return-void
.end method

.method public onSearchUiExited()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->collapse(Z)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->fadeIn()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->shouldShowActionBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0, v1, v1}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    .line 93
    :goto_0
    return-void

    .line 109
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    goto :goto_0
.end method

.method public restoreActionBarOffset()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    .line 235
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 210
    const-string/jumbo v2, "key_actionbar_is_slid_up"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    .line 212
    const-string/jumbo v2, "key_actionbar_is_faded_out"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 213
    .local v1, "isSearchBoxFadedOut":Z
    if-eqz v1, :cond_2

    .line 214
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisible(Z)V

    .line 221
    :cond_0
    :goto_0
    const-string/jumbo v2, "key_actionbar_is_expanded"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 222
    .local v0, "isSearchBoxExpanded":Z
    if-eqz v0, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2, v4, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 217
    .end local v0    # "isSearchBoxExpanded":Z
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisible(Z)V

    goto :goto_0

    .line 226
    .restart local v0    # "isSearchBoxExpanded":Z
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->collapse(Z)V

    goto :goto_1
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    const-string/jumbo v0, "key_actionbar_is_slid_up"

    iget-boolean v1, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const-string/jumbo v0, "key_actionbar_is_faded_out"

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string/jumbo v0, "key_actionbar_is_expanded"

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public setHideOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    .line 183
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0, p1}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->setActionBarHideOffset(I)V

    .line 181
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public slideActionBar(ZZ)V
    .locals 6
    .param p1, "slideUp"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 159
    if-eqz p2, :cond_1

    .line 161
    if-eqz p1, :cond_0

    new-array v2, v2, [F

    aput v3, v2, v1

    aput v4, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 162
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v1, Lcom/android/dialer/widget/ActionBarController$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/widget/ActionBarController$2;-><init>(Lcom/android/dialer/widget/ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :goto_1
    iput-boolean p1, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    .line 155
    return-void

    .line 161
    :cond_0
    new-array v2, v2, [F

    aput v4, v2, v1

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 172
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v1}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/ActionBarController;->setHideOffset(I)V

    goto :goto_1
.end method
