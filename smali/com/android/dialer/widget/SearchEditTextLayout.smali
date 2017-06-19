.class public Lcom/android/dialer/widget/SearchEditTextLayout;
.super Landroid/widget/FrameLayout;
.source "SearchEditTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/SearchEditTextLayout$Callback;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackButtonView:Landroid/view/View;

.field private mBottomMargin:I

.field private mCallback:Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

.field private mClearButtonView:Landroid/view/View;

.field private mCollapsed:Landroid/view/View;

.field private mCollapsedElevation:F

.field private mCollapsedSearchBox:Landroid/view/View;

.field private mExpanded:Landroid/view/View;

.field private mExpandedSearchBox:Landroid/view/View;

.field protected mIsExpanded:Z

.field protected mIsFadedOut:Z

.field private mLeftMargin:I

.field private mOverflowButtonView:Landroid/view/View;

.field private mPreImeKeyListener:Landroid/view/View$OnKeyListener;

.field private mRightMargin:I

.field private mSearchIcon:Landroid/view/View;

.field private mSearchView:Landroid/widget/EditText;

.field private mTopMargin:I

.field private mVoiceSearchButtonView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/widget/SearchEditTextLayout;)Lcom/android/dialer/widget/SearchEditTextLayout$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCallback:Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/widget/SearchEditTextLayout;F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    .line 79
    return-void
.end method

.method private canIntentBeHandled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 332
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 335
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    .line 334
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 336
    .local v1, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private prepareAnimator(Z)V
    .locals 4
    .param p1, "expand"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/dialer/widget/SearchEditTextLayout$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$7;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    return-void
.end method

.method private setMargins(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 324
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mTopMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 325
    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 326
    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mLeftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 327
    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mRightMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 328
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->requestLayout()V

    .line 322
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "isExpand"    # Z

    .prologue
    const/16 v3, 0x8

    .line 270
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 271
    .local v0, "collapsedViewVisibility":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 273
    .local v1, "expandedViewVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->canIntentBeHandled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :goto_2
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mOverflowButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBackButtonView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :goto_3
    return-void

    .line 270
    .end local v0    # "collapsedViewVisibility":I
    .end local v1    # "expandedViewVisibility":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "collapsedViewVisibility":I
    goto :goto_0

    .line 271
    :cond_1
    const/16 v1, 0x8

    .restart local v1    # "expandedViewVisibility":I
    goto :goto_1

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 288
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public collapse(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 245
    invoke-direct {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->updateVisibility(Z)V

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->crossFadeViews(Landroid/view/View;Landroid/view/View;I)V

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 250
    invoke-direct {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->prepareAnimator(Z)V

    .line 258
    :goto_0
    iput-boolean v3, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    .line 259
    iget v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedElevation:F

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setElevation(F)V

    .line 260
    const v0, 0x7f02029b

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setBackgroundResource(I)V

    .line 244
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 254
    invoke-direct {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    .line 255
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 249
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public expand(ZZ)V
    .locals 9
    .param p1, "animate"    # Z
    .param p2, "requestFocus"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 215
    invoke-direct {p0, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->updateVisibility(Z)V

    .line 217
    if-eqz p1, :cond_1

    .line 218
    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/animation/AnimUtils;->crossFadeViews(Landroid/view/View;Landroid/view/View;I)V

    .line 219
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 220
    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    .line 221
    invoke-direct {p0, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->prepareAnimator(Z)V

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingTop()I

    move-result v3

    .line 231
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingStart()I

    move-result v2

    .line 232
    .local v2, "paddingStart":I
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingBottom()I

    move-result v0

    .line 233
    .local v0, "paddingBottom":I
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingEnd()I

    move-result v1

    .line 234
    .local v1, "paddingEnd":I
    const v4, 0x7f02029d

    invoke-virtual {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setBackgroundResource(I)V

    .line 235
    invoke-virtual {p0, v8}, Lcom/android/dialer/widget/SearchEditTextLayout;->setElevation(F)V

    .line 236
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setPaddingRelative(IIII)V

    .line 238
    if-eqz p2, :cond_0

    .line 239
    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    :cond_0
    iput-boolean v7, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    .line 214
    return-void

    .line 223
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v2    # "paddingStart":I
    .end local v3    # "paddingTop":I
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 225
    invoke-direct {p0, v8}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    .line 226
    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 219
    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method public fadeIn()V
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    .line 197
    return-void
.end method

.method public fadeOut(Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    .prologue
    .line 193
    const/16 v0, 0xc8

    invoke-static {p0, v0, p1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    .line 192
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    return v0
.end method

.method public isFadedOut()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f0e01f7

    const v4, 0x7f0e01f6

    const v3, 0x7f0e01f5

    .line 93
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mTopMargin:I

    .line 95
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBottomMargin:I

    .line 96
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mLeftMargin:I

    .line 97
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mRightMargin:I

    .line 99
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getElevation()F

    move-result v1

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedElevation:F

    .line 101
    const v1, 0x7f0e01f9

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    .line 102
    invoke-virtual {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const v2, 0x7f0e01f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f0e01fa

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchIcon:Landroid/view/View;

    .line 106
    const v1, 0x7f0e01fb

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    .line 107
    const v1, 0x7f0e01fc

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    .line 108
    const v1, 0x7f0e01fd

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mOverflowButtonView:Landroid/view/View;

    .line 109
    invoke-virtual {p0, v5}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBackButtonView:Landroid/view/View;

    .line 110
    invoke-virtual {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpandedSearchBox:Landroid/view/View;

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$1;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$2;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$3;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$4;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$4;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$5;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$5;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p0, v5}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$6;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$6;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 92
    return-void
.end method

.method public setCallback(Lcom/android/dialer/widget/SearchEditTextLayout$Callback;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCallback:Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    .line 87
    return-void
.end method

.method public setPreImeKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    .line 83
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setAlpha(F)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisibility(I)V

    .line 206
    iput-boolean v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    .line 202
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setAlpha(F)V

    .line 209
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisibility(I)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    goto :goto_0
.end method
