.class public Lcom/android/dialer/list/SearchFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/SearchFragment$HostInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarHeight:I

.field private mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

.field private mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

.field private mAddToContactNumber:Ljava/lang/String;

.field protected mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

.field private mHideDialpadDuration:I

.field private mPaddingTop:I

.field private mShadowHeight:I

.field private mShowDialpadDuration:I

.field private mSpacer:Landroid/widget/Space;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/list/SearchFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/dialer/list/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SearchFragment;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public checkForProhibitedPhoneNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 209
    const v3, 0x7f0d01f5

    .line 208
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "prohibitedPhoneNumberRegexp":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 215
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 213
    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/android/dialer/list/SearchFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "The phone number is prohibited explicitly by a rule."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 219
    const v2, 0x7f0d027e

    .line 218
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 220
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "phone_prohibited_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 223
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "adapter":Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 232
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 233
    invoke-virtual {v0, p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V

    .line 234
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 389
    .local v1, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 390
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 391
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    .line 392
    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    .line 393
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    :cond_0
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->setQuickContactEnabled(Z)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setAdjustSelectionBoundsEnabled(Z)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setDarkTheme(Z)V

    .line 96
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->setUseCallableUri(Z)V

    .line 100
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/dialer/list/SearchFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t implement OnListFragmentScrolledListener. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string/jumbo v4, "Ignoring."

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 5
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz p3, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 174
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v1

    .line 177
    .local v1, "oldLayerType":I
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 178
    new-instance v3, Lcom/android/dialer/list/SearchFragment$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/dialer/list/SearchFragment$2;-><init>(Lcom/android/dialer/list/SearchFragment;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    .end local v1    # "oldLayerType":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method protected onItemClick(IJ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v8, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    .line 240
    .local v0, "adapter":Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v4

    .line 245
    .local v4, "shortcutType":I
    sget-object v5, Lcom/android/dialer/list/SearchFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onItemClick: shortcutType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    packed-switch v4, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onItemClick(IJ)V

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v2

    .line 254
    .local v2, "listener":Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->checkForProhibitedPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    invoke-virtual {p0, v8}, Lcom/android/dialer/list/SearchFragment;->getCallInitiationType(Z)I

    move-result v5

    .line 255
    invoke-interface {v2, v3, v8, v5}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 260
    .end local v2    # "listener":Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .end local v3    # "number":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .restart local v3    # "number":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 263
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    goto :goto_1

    .line 266
    :pswitch_3
    iget-object v5, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3    # "number":Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 270
    const v6, 0x7f0d0286

    .line 269
    invoke-static {v5, v1, v6}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 267
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    goto :goto_2

    .line 273
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .restart local v3    # "number":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 275
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 278
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "number":Ljava/lang/String;
    :pswitch_5
    iget-object v5, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "number":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v2

    .line 281
    .restart local v2    # "listener":Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->checkForProhibitedPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    invoke-virtual {p0, v8}, Lcom/android/dialer/list/SearchFragment;->getCallInitiationType(Z)I

    move-result v5

    .line 282
    const/4 v6, 0x1

    invoke-interface {v2, v3, v6, v5}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 279
    .end local v2    # "listener":Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .end local v3    # "number":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_3

    .line 247
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onStart()V

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/list/SearchFragment$HostInterface;

    iput-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    .line 116
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 117
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v3}, Lcom/android/dialer/list/SearchFragment$HostInterface;->getActionBarHeight()I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mActionBarHeight:I

    .line 118
    const v3, 0x7f02029d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    .line 119
    const v3, 0x7f0b0221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mPaddingTop:I

    .line 120
    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mShowDialpadDuration:I

    .line 121
    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mHideDialpadDuration:I

    .line 123
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 127
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-nez v3, :cond_1

    .line 128
    new-instance v3, Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/dialer/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->setupEmptyView()V

    .line 134
    :cond_1
    const v3, 0x7f0a0354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 135
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 136
    invoke-virtual {p0, v5}, Lcom/android/dialer/list/SearchFragment;->setVisibleScrollbarEnabled(Z)V

    .line 139
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAccessibilityLiveRegion(I)V

    .line 140
    invoke-static {v0}, Lcom/android/dialer/list/ContentChangedFilter;->addToParent(Landroid/view/View;)V

    .line 142
    new-instance v3, Lcom/android/dialer/list/SearchFragment$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/list/SearchFragment$1;-><init>(Lcom/android/dialer/list/SearchFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/dialer/list/SearchFragment;->updatePosition(Z)V

    .line 108
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/ViewUtil;->addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V

    .line 163
    return-void
.end method

.method public resizeListView()V
    .locals 3

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    if-nez v2, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v2}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v2}, Lcom/android/dialer/list/SearchFragment$HostInterface;->getDialpadHeight()I

    move-result v1

    .line 351
    .local v1, "spacerHeight":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    invoke-virtual {v2}, Landroid/widget/Space;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    invoke-virtual {v2}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 355
    iget-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    invoke-virtual {v2, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void

    .line 350
    .end local v1    # "spacerHeight":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "spacerHeight":I
    goto :goto_0
.end method

.method public setAddToContactNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "addToContactNumber"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "onTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment;->mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 382
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 193
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, v1, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 189
    :cond_0
    return-void
.end method

.method protected setupEmptyView()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method protected startLoading()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->startLoading()V

    .line 379
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->setupEmptyView()V

    .line 360
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    .line 371
    .local v0, "adapter":Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->disableAllShortcuts()V

    goto :goto_0

    .line 376
    .end local v0    # "adapter":Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updatePosition(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    .line 297
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/dialer/list/SearchFragment;->mActionBarHeight:I

    iget v8, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    sub-int v6, v7, v8

    .line 298
    .local v6, "startTranslationValue":I
    :goto_0
    const/4 v1, 0x0

    .line 300
    .local v1, "endTranslationValue":I
    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isActionBarShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x0

    .line 304
    :cond_1
    :goto_1
    if-eqz p1, :cond_6

    .line 306
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v5

    .line 308
    .local v5, "slideUp":Z
    if-eqz v5, :cond_4

    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    .line 309
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    :goto_2
    if-eqz v5, :cond_5

    iget v0, p0, Lcom/android/dialer/list/SearchFragment;->mShowDialpadDuration:I

    .line 310
    .local v0, "duration":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v7

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 311
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 312
    int-to-float v8, v1

    .line 311
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 314
    int-to-long v8, v0

    .line 311
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 315
    new-instance v8, Lcom/android/dialer/list/SearchFragment$3;

    invoke-direct {v8, p0, v5}, Lcom/android/dialer/list/SearchFragment$3;-><init>(Lcom/android/dialer/list/SearchFragment;Z)V

    .line 311
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 337
    .end local v0    # "duration":I
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v5    # "slideUp":Z
    :goto_4
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v4, 0x0

    .line 338
    .local v4, "paddingTop":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 340
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v7

    .line 342
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v8

    .line 343
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    .line 339
    invoke-virtual {v3, v7, v4, v8, v9}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 294
    return-void

    .line 297
    .end local v1    # "endTranslationValue":I
    .end local v3    # "listView":Landroid/widget/ListView;
    .end local v4    # "paddingTop":I
    .end local v6    # "startTranslationValue":I
    :cond_2
    iget v7, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    neg-int v6, v7

    .restart local v6    # "startTranslationValue":I
    goto :goto_0

    .line 302
    .restart local v1    # "endTranslationValue":I
    :cond_3
    iget v7, p0, Lcom/android/dialer/list/SearchFragment;->mActionBarHeight:I

    iget v8, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    sub-int v1, v7, v8

    goto :goto_1

    .line 308
    .restart local v5    # "slideUp":Z
    :cond_4
    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_2

    .line 309
    :cond_5
    iget v0, p0, Lcom/android/dialer/list/SearchFragment;->mHideDialpadDuration:I

    .restart local v0    # "duration":I
    goto :goto_3

    .line 332
    .end local v0    # "duration":I
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v5    # "slideUp":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v7

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->resizeListView()V

    goto :goto_4

    .line 337
    :cond_7
    iget v4, p0, Lcom/android/dialer/list/SearchFragment;->mPaddingTop:I

    .restart local v4    # "paddingTop":I
    goto :goto_5
.end method
