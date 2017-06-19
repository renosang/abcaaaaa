.class public Lcom/android/dialer/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;,
        Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;,
        Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;
    }
.end annotation


# instance fields
.field private mAddParticipant:Z

.field private mAnimate:Z

.field private final mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private mCallStateReceiver:Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;

.field private mClearDigitsOnStop:Z

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

.field private mDialpadSlideInDuration:I

.field private mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsFilledByIntent:Z

.field private mFirstLaunch:Z

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mOverflowMenuButton:Landroid/view/View;

.field private mOverflowPopupMenu:Landroid/widget/PopupMenu;

.field private final mPressedDialpadKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

.field private mRecipients:Landroid/widget/EditText;

.field private mSpacer:Landroid/view/View;

.field private mStartedFromNewIntent:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mWasEmptyBeforeTextChange:Z


# direct methods
.method static synthetic -set0(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    .line 226
    new-instance v0, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    .line 227
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 240
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAddParticipant:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 301
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    .line 101
    return-void
.end method

.method private buildOptionsMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .param p1, "invoker"    # Landroid/view/View;

    .prologue
    .line 936
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$2;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment$2;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 956
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    const v1, 0x7f110001

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 957
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 958
    return-object v0
.end method

.method private callSpeedNumber(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1882
    packed-switch p1, :pswitch_data_0

    .line 1891
    return-void

    .line 1883
    :pswitch_0
    const/4 v2, 0x2

    .line 1894
    .local v2, "number":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/dialer/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1895
    .local v3, "phoneNumber":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1896
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->showNoSpeedNumberDialog(I)V

    .line 1879
    :goto_1
    return-void

    .line 1884
    .end local v2    # "number":I
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x3

    .restart local v2    # "number":I
    goto :goto_0

    .line 1885
    .end local v2    # "number":I
    :pswitch_2
    const/4 v2, 0x4

    .restart local v2    # "number":I
    goto :goto_0

    .line 1886
    .end local v2    # "number":I
    :pswitch_3
    const/4 v2, 0x5

    .restart local v2    # "number":I
    goto :goto_0

    .line 1887
    .end local v2    # "number":I
    :pswitch_4
    const/4 v2, 0x6

    .restart local v2    # "number":I
    goto :goto_0

    .line 1888
    .end local v2    # "number":I
    :pswitch_5
    const/4 v2, 0x7

    .restart local v2    # "number":I
    goto :goto_0

    .line 1889
    .end local v2    # "number":I
    :pswitch_6
    const/16 v2, 0x8

    .restart local v2    # "number":I
    goto :goto_0

    .line 1890
    .end local v2    # "number":I
    :pswitch_7
    const/16 v2, 0x9

    .restart local v2    # "number":I
    goto :goto_0

    .line 1898
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/dialer/DialtactsActivity;

    if-eqz v4, :cond_1

    .line 1899
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    .line 1900
    :goto_2
    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1901
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1902
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    goto :goto_1

    .line 1899
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .local v0, "activity":Lcom/android/dialer/DialtactsActivity;
    goto :goto_2

    .line 1882
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0132
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static canAddDigit(Ljava/lang/CharSequence;IIC)Z
    .locals 3
    .param p0, "digits"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "newDigit"    # C
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v2, 0x3b

    const/4 v1, 0x0

    .line 1739
    if-eq p3, v2, :cond_0

    const/16 v0, 0x2c

    if-eq p3, v0, :cond_0

    .line 1740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1741
    const-string/jumbo v1, "Should not be called for anything other than PAUSE & WAIT"

    .line 1740
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ge p2, p1, :cond_2

    .line 1746
    :cond_1
    return v1

    .line 1750
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p2, v0, :cond_4

    :cond_3
    return v1

    .line 1753
    :cond_4
    if-nez p1, :cond_5

    return v1

    .line 1755
    :cond_5
    if-ne p3, v2, :cond_7

    .line 1757
    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_6

    return v1

    .line 1760
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p2, :cond_7

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    return v1

    .line 1763
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private configureKeypadListeners(Landroid/view/View;)V
    .locals 6
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    .line 655
    const/16 v5, 0xc

    new-array v0, v5, [I

    .local v0, "buttonIds":[I
    fill-array-data v0, :array_0

    .line 660
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 661
    aget v5, v0, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 662
    .local v1, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V

    .line 664
    if-lez v2, :cond_0

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    if-ge v2, v5, :cond_0

    .line 665
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 660
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    :cond_1
    const v5, 0x7f0e0141

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 671
    .local v3, "one":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v3, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 674
    const v5, 0x7f0e0145

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 675
    .local v4, "zero":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v4, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 654
    return-void

    .line 655
    :array_0
    .array-data 4
        0x7f0e0141
        0x7f0e0132
        0x7f0e0133
        0x7f0e0134
        0x7f0e0135
        0x7f0e0136
        0x7f0e0137
        0x7f0e0138
        0x7f0e0139
        0x7f0e0144
        0x7f0e0145
        0x7f0e0143
    .end array-data
.end method

.method private configureScreenFromIntent(Landroid/app/Activity;)V
    .locals 8
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 546
    instance-of v5, p1, Lcom/android/dialer/DialtactsActivity;

    if-nez v5, :cond_0

    .line 547
    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 548
    return-void

    .line 552
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 554
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 559
    const-string/jumbo v5, "DialpadFragment"

    .line 560
    const-string/jumbo v6, "Screen configuration is requested before onCreateView() is called. Ignored"

    .line 559
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 564
    :cond_1
    const/4 v4, 0x0

    .line 568
    .local v4, "needToShowDialpadChooser":Z
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v3

    .line 569
    .local v3, "isAddCallMode":Z
    if-nez v3, :cond_5

    .line 574
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v1

    .line 575
    .local v1, "digitsFilled":Z
    iget-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v5, :cond_4

    .end local v1    # "digitsFilled":Z
    :goto_0
    if-nez v1, :cond_3

    .line 577
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.DIAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 579
    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 578
    if-eqz v5, :cond_3

    .line 582
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 583
    const/4 v4, 0x1

    .line 592
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    .line 593
    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 544
    return-void

    .restart local v1    # "digitsFilled":Z
    :cond_4
    move v1, v6

    .line 575
    goto :goto_0

    .line 589
    .end local v1    # "digitsFilled":Z
    :cond_5
    const-string/jumbo v5, "add_participant"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAddParticipant:Z

    .line 590
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;->setConferenceDialButtonVisibility(Z)V

    goto :goto_1
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 473
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v0, :cond_2

    .line 477
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 480
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_7

    .line 481
    const-string/jumbo v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, "data":Ljava/lang/String;
    iput-boolean v12, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 487
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, "converted":Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return v12

    .line 474
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "converted":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_2
    return v13

    .line 491
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 492
    return v13

    .line 494
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 495
    .local v10, "type":Ljava/lang/String;
    const-string/jumbo v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 496
    const-string/jumbo v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 495
    if-eqz v0, :cond_7

    .line 498
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 499
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "number"

    aput-object v4, v2, v13

    const-string/jumbo v4, "number_key"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    .line 498
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 501
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 503
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 507
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 508
    return v12

    .line 511
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 518
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_7
    return v13

    .line 510
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 510
    throw v0
.end method

.method static getFormattedDigits(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "normalizedNumber"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 636
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "number":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "postDial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    return-object v1

    .line 645
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    return-object v0

    .line 651
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleDialButtonClickWithEmptyDigits()V
    .locals 2

    .prologue
    .line 1296
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1295
    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1324
    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method private handleDialButtonPressed()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1241
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1245
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isShown()Z

    move-result v2

    .line 1246
    .local v2, "isDigitsShown":Z
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1248
    .local v3, "number":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1249
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    .line 1240
    .end local v2    # "isDigitsShown":Z
    .end local v3    # "number":Ljava/lang/String;
    :goto_1
    return-void

    .line 1243
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    goto :goto_1

    .line 1247
    .restart local v2    # "isDigitsShown":Z
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_0

    .line 1250
    :cond_3
    iget-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAddParticipant:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1251
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isShown()Z

    move-result v4

    .line 1250
    if-eqz v4, :cond_4

    .line 1251
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isRecipientEmpty()Z

    move-result v4

    .line 1250
    if-eqz v4, :cond_4

    .line 1256
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1257
    const-string/jumbo v6, "Error: Cannot dial.  Please provide conference recipients."

    .line 1256
    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1263
    :cond_4
    if-eqz v3, :cond_5

    .line 1264
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1276
    :cond_5
    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1277
    .local v1, "intent":Landroid/content/Intent;
    if-nez v2, :cond_6

    .line 1279
    const-string/jumbo v4, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1281
    :cond_6
    const-string/jumbo v6, "add_participant"

    iget-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAddParticipant:Z

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v4

    :goto_2
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1282
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1283
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    goto :goto_1

    .line 1265
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    .line 1263
    if-eqz v4, :cond_5

    .line 1266
    const-string/jumbo v4, "DialpadFragment"

    const-string/jumbo v5, "The phone number is prohibited explicitly by a rule."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1269
    const v4, 0x7f0d027e

    .line 1268
    invoke-static {v4}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1270
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "phone_prohibited_dialog"

    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1274
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_8
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    goto/16 :goto_1

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_9
    move v4, v5

    .line 1281
    goto :goto_2
.end method

.method private hideAndClearDialpad(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1170
    return-void
.end method

.method public static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 528
    if-nez p0, :cond_0

    .line 529
    return v2

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    :cond_1
    const-string/jumbo v1, "add_call_mode"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 536
    :cond_2
    return v2
.end method

.method private isDialpadChooserVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1455
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDigitsEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1770
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneInUse()Z
    .locals 2

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1607
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1608
    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 1610
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isRecipientEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1777
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1713
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1714
    const-string/jumbo v5, "voicemail"

    .line 1713
    invoke-static {v4, v5}, Lcom/android/dialer/util/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 1715
    .local v0, "defaultUserSelectedAccount":Landroid/telecom/PhoneAccountHandle;
    if-nez v0, :cond_1

    .line 1718
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1720
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/dialer/util/TelecomUtil;->getVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1723
    .end local v0    # "defaultUserSelectedAccount":Landroid/telecom/PhoneAccountHandle;
    :catch_0
    move-exception v1

    .line 1725
    .local v1, "se":Ljava/lang/SecurityException;
    const-string/jumbo v3, "DialpadFragment"

    const-string/jumbo v4, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return v2
.end method

.method private keyPressed(I)V
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 815
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 816
    :cond_0
    return-void

    .line 818
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 859
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 860
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v5, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 861
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 864
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 865
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 866
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 814
    :cond_2
    return-void

    .line 820
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "length":I
    :pswitch_0
    invoke-direct {p0, v6, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 823
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 826
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 829
    :pswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 832
    :pswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 835
    :pswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 838
    :pswitch_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 841
    :pswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 844
    :pswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 847
    :pswitch_9
    invoke-direct {p0, v5, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 850
    :pswitch_a
    const/16 v2, 0xb

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 853
    :pswitch_b
    const/16 v2, 0xa

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1812
    new-instance v1, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 1813
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1814
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 2

    .prologue
    .line 1617
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .param p1, "tone"    # I

    .prologue
    .line 1333
    const/16 v0, 0x96

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    .line 1332
    return-void
.end method

.method private playTone(II)V
    .locals 6
    .param p1, "tone"    # I
    .param p2, "durationMs"    # I

    .prologue
    .line 1351
    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v2, :cond_0

    .line 1352
    return-void

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1362
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1363
    .local v1, "ringerMode":I
    if-eqz v1, :cond_1

    .line 1364
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1365
    :cond_1
    return-void

    .line 1368
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1369
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_3

    .line 1370
    const-string/jumbo v2, "DialpadFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1371
    return-void

    .line 1375
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1349
    return-void

    .line 1368
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 1787
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1788
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1789
    return-void

    .line 1792
    :cond_0
    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    .line 1793
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1794
    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$3;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 1792
    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 1808
    .local v0, "lastCallArgs":Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/common/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 1786
    return-void
.end method

.method private removePreviousDigitIfPossible(C)V
    .locals 3
    .param p1, "digit"    # C

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1156
    .local v0, "currentPosition":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1158
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1154
    :cond_0
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/TelecomUtil;->showInCallScreen(Landroid/content/Context;Z)V

    .line 1598
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1587
    return-void
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->getFormattedDigits(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "formatted":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 615
    .local v0, "digits":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 618
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 611
    .end local v0    # "digits":Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private showDialpadChooser(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1413
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1414
    return-void

    .line 1417
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1418
    return-void

    .line 1421
    :cond_1
    if-eqz p1, :cond_4

    .line 1422
    const-string/jumbo v0, "DialpadFragment"

    const-string/jumbo v1, "Showing dialpad chooser!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v0, :cond_2

    .line 1424
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setVisibility(I)V

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_3

    .line 1433
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1435
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1448
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->onHiddenChanged(Z)V

    .line 1412
    return-void

    .line 1437
    :cond_4
    const-string/jumbo v0, "DialpadFragment"

    const-string/jumbo v1, "Displaying normal Dialer UI."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v0, :cond_5

    .line 1439
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0, v2}, Lcom/android/phone/common/dialpad/DialpadView;->setVisibility(I)V

    .line 1444
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 1445
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1441
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method

.method private showNoSpeedNumberDialog(I)V
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 1907
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1908
    const v1, 0x7f0d0309

    .line 1907
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1909
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d030a

    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1907
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1910
    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/dialpad/DialpadFragment$5;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    const v2, 0x7f0d030c

    .line 1907
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1918
    const v1, 0x7f0d030d

    const/4 v2, 0x0

    .line 1907
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1906
    return-void
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    .line 1385
    return-void

    .line 1387
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1389
    const-string/jumbo v0, "DialpadFragment"

    const-string/jumbo v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1390
    return-void

    .line 1392
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1382
    return-void

    .line 1387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateDeleteButtonEnabledState()V
    .locals 2

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1683
    return-void

    .line 1685
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1686
    .local v0, "digitsNotEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1681
    return-void

    .line 1685
    .end local v0    # "digitsNotEmpty":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "digitsNotEmpty":Z
    goto :goto_0
.end method

.method private updateDialString(C)V
    .locals 7
    .param p1, "newDigit"    # C

    .prologue
    .line 1647
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_0

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_0

    .line 1648
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1649
    const-string/jumbo v6, "Not expected for anything other than PAUSE & WAIT"

    .line 1648
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1656
    :cond_0
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1657
    .local v0, "anchor":I
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1659
    .local v2, "point":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1660
    .local v4, "selectionStart":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1662
    .local v3, "selectionEnd":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1663
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    move v4, v3

    .line 1666
    :cond_1
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1668
    .local v1, "digits":Landroid/text/Editable;
    invoke-static {v1, v4, v3, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->canAddDigit(Ljava/lang/CharSequence;IIC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1669
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v3, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1671
    if-eq v4, v3, :cond_2

    .line 1673
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 1646
    :cond_2
    return-void
.end method

.method private updateMenuOverflowButton(Z)V
    .locals 2
    .param p1, "transitionIn"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1696
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadView;->getOverflowMenuButton()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    .line 1697
    if-eqz p1, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 1695
    :goto_0
    return-void

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    .line 338
    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iput-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 346
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;->onDialpadQueryChanged(Ljava/lang/String;)V

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    .line 334
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 315
    return-void
.end method

.method public callVoicemail()V
    .locals 3

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1164
    new-instance v1, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    invoke-static {}, Lcom/android/contacts/common/CallUtil;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Landroid/net/Uri;)V

    .line 1165
    const/4 v2, 0x2

    .line 1164
    invoke-virtual {v1, v2}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 1163
    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    .line 1162
    return-void
.end method

.method public clearDialpad()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1289
    :cond_0
    return-void
.end method

.method public dialButtonPressed()V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonPressed()V

    .line 965
    return-void
.end method

.method public dialConferenceButtonPressed()V
    .locals 4

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 973
    .local v0, "show":Z
    :goto_0
    const-string/jumbo v1, "DialpadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialConferenceButtonPressed show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    if-eqz v0, :cond_2

    .line 975
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialConference(Z)V

    .line 969
    :goto_1
    return-void

    .line 972
    .end local v0    # "show":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "show":Z
    goto :goto_0

    .line 977
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonPressed()V

    .line 978
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialConference(Z)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getAnimate()Z
    .locals 1

    .prologue
    .line 1846
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadHeight()I
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-nez v0, :cond_0

    .line 1855
    const/4 v0, 0x0

    return v0

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public hideAndClearDialConference()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1018
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->commitDialpadFragmentHide()V

    .line 1016
    return-void
.end method

.method public isRecipientsShown()Z
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1036
    .local v0, "resId":I
    const v1, 0x7f0e013e

    if-ne v0, v1, :cond_1

    .line 1037
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1038
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonPressed()V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    const v1, 0x7f0e014f

    if-ne v0, v1, :cond_2

    .line 1040
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1041
    :cond_2
    const v1, 0x7f0e014e

    if-ne v0, v1, :cond_3

    .line 1042
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 1045
    :cond_3
    const v1, 0x7f0e014d

    if-ne v0, v1, :cond_4

    .line 1046
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 1048
    :cond_4
    const-string/jumbo v1, "DialpadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected onClick() event from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string/jumbo v1, "DialpadFragment onCreate"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 359
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 361
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 366
    const v2, 0x7f0d01f5

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 368
    if-eqz p1, :cond_0

    .line 369
    const-string/jumbo v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadSlideInDuration:I

    .line 374
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;

    if-nez v1, :cond_1

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    .line 376
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    .line 375
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "callStateIntentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;

    .line 378
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    .end local v0    # "callStateIntentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 357
    return-void

    .line 361
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 385
    const-string/jumbo v4, "DialpadFragment onCreateView"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v4, "DialpadFragment inflate view"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 387
    const v4, 0x7f040057

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 389
    .local v2, "fragmentView":Landroid/view/View;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 390
    const-string/jumbo v4, "DialpadFragment buildLayer"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v2}, Landroid/view/View;->buildLayer()V

    .line 392
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 394
    const-string/jumbo v4, "DialpadFragment setup views"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 396
    const v4, 0x7f0e0146

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadView;

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    .line 397
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/common/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    .line 398
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v4}, Lcom/android/phone/common/dialpad/DialpadView;->getDigits()Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 399
    const v4, 0x7f0e0150

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    .line 400
    const v4, 0x7f0e014b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 401
    const v4, 0x7f0e0131

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 402
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 404
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 406
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    sget-object v5, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 407
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 409
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 410
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 411
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 414
    const v4, 0x7f0e0141

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 415
    .local v3, "oneButton":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 416
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->configureKeypadListeners(Landroid/view/View;)V

    .line 419
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v4}, Lcom/android/phone/common/dialpad/DialpadView;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 421
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 426
    :cond_2
    const v4, 0x7f0e0062

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpacer:Landroid/view/View;

    .line 427
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpacer:Landroid/view/View;

    new-instance v5, Lcom/android/dialer/dialpad/DialpadFragment$1;

    invoke-direct {v5, p0}, Lcom/android/dialer/dialpad/DialpadFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 443
    const v4, 0x7f0e013b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 444
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 447
    const v4, 0x7f0e013d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 449
    .local v1, "floatingActionButtonContainer":Landroid/view/View;
    const v4, 0x7f0e013e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 450
    .local v0, "floatingActionButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v4, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v1, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 453
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 454
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 455
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 807
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->destroy()V

    .line 809
    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 805
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 5
    .param p1, "hidden"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1819
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1820
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    .line 1821
    .local v0, "activity":Lcom/android/dialer/DialtactsActivity;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0e0146

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadView;

    .line 1822
    .local v1, "dialpadView":Lcom/android/phone/common/dialpad/DialpadView;
    if-nez v0, :cond_0

    return-void

    .line 1823
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1832
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1833
    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    if-eqz v2, :cond_6

    .line 1834
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    .line 1818
    :cond_2
    :goto_1
    return-void

    .line 1824
    :cond_3
    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    if-eqz v2, :cond_4

    .line 1825
    invoke-virtual {v1}, Lcom/android/phone/common/dialpad/DialpadView;->animateShow()V

    .line 1827
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 1828
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadSlideInDuration:I

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    .line 1829
    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->onDialpadShown()V

    .line 1830
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1828
    goto :goto_2

    .line 1836
    :cond_6
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 1563
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1564
    .local v0, "item":Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    iget v1, v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1565
    .local v1, "itemId":I
    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 1568
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    .line 1561
    :goto_0
    return-void

    .line 1569
    :cond_0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 1572
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1573
    :cond_1
    const/16 v2, 0x67

    if-ne v1, v2, :cond_2

    .line 1576
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    .line 1578
    :cond_2
    const-string/jumbo v2, "DialpadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e014e

    if-ne v0, v1, :cond_0

    .line 873
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonPressed()V

    .line 875
    const/4 v0, 0x1

    return v0

    .line 879
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1055
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1056
    .local v1, "digits":Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1057
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 1143
    return v4

    .line 1059
    :sswitch_0
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1060
    return v7

    .line 1063
    :sswitch_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    const-string/jumbo v9, "1"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1065
    :cond_0
    const/16 v8, 0x31

    invoke-direct {p0, v8}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible(C)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 1070
    .local v6, "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1071
    const-string/jumbo v9, "voicemail"

    .line 1070
    invoke-static {v8, v9}, Lcom/android/dialer/util/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    .line 1069
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1072
    .local v2, "hasUserSelectedDefault":Z
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_4

    .line 1073
    if-eqz v2, :cond_3

    move v5, v4

    .line 1075
    .local v5, "needsAccountDisambiguation":Z
    :goto_0
    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->callVoicemail()V

    .line 1097
    :cond_2
    :goto_1
    return v7

    .end local v5    # "needsAccountDisambiguation":Z
    :cond_3
    move v5, v7

    .line 1073
    goto :goto_0

    :cond_4
    move v5, v4

    .line 1072
    goto :goto_0

    .line 1080
    .restart local v5    # "needsAccountDisambiguation":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1084
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1085
    const-string/jumbo v9, "airplane_mode_on"

    .line 1084
    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    move v4, v7

    .line 1086
    .local v4, "isAirplaneModeOn":Z
    :cond_6
    if-eqz v4, :cond_7

    .line 1088
    const v8, 0x7f0d0280

    .line 1087
    invoke-static {v8}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1089
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 1090
    const-string/jumbo v9, "voicemail_request_during_airplane_mode"

    .line 1089
    invoke-virtual {v0, v8, v9}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 1093
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_7
    const v8, 0x7f0d027f

    .line 1092
    invoke-static {v8}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1094
    .restart local v0    # "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string/jumbo v9, "voicemail_not_ready"

    invoke-virtual {v0, v8, v9}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 1099
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v2    # "hasUserSelectedDefault":Z
    .end local v4    # "isAirplaneModeOn":Z
    .end local v5    # "needsAccountDisambiguation":Z
    .end local v6    # "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_8
    return v4

    .line 1102
    :sswitch_2
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1106
    const/16 v8, 0x30

    invoke-direct {p0, v8}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible(C)V

    .line 1108
    :cond_9
    const/16 v8, 0x51

    invoke-direct {p0, v8}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1109
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 1110
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1111
    return v7

    .line 1114
    :sswitch_3
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 1115
    return v4

    .line 1125
    :sswitch_4
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 1128
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1129
    const-string/jumbo v9, "airplane_mode_on"

    .line 1128
    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    move v4, v7

    .line 1130
    .restart local v4    # "isAirplaneModeOn":Z
    :cond_a
    if-eqz v4, :cond_b

    .line 1132
    const v8, 0x7f0d030b

    .line 1131
    invoke-static {v8}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1133
    .restart local v0    # "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 1134
    const-string/jumbo v9, "speed_dial_request_during_airplane_mode"

    .line 1133
    invoke-virtual {v0, v8, v9}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1138
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :goto_2
    return v7

    .line 1136
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->callSpeedNumber(I)V

    goto :goto_2

    .line 1140
    .end local v4    # "isAirplaneModeOn":Z
    :cond_c
    return v4

    .line 1057
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0132 -> :sswitch_4
        0x7f0e0133 -> :sswitch_4
        0x7f0e0134 -> :sswitch_4
        0x7f0e0135 -> :sswitch_4
        0x7f0e0136 -> :sswitch_4
        0x7f0e0137 -> :sswitch_4
        0x7f0e0138 -> :sswitch_4
        0x7f0e0139 -> :sswitch_4
        0x7f0e0141 -> :sswitch_1
        0x7f0e0145 -> :sswitch_2
        0x7f0e014e -> :sswitch_3
        0x7f0e014f -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1622
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1623
    .local v0, "resId":I
    const v1, 0x7f0e022d

    if-ne v0, v1, :cond_0

    .line 1624
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    .line 1625
    return v3

    .line 1626
    :cond_0
    const v1, 0x7f0e022e

    if-ne v0, v1, :cond_1

    .line 1627
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    .line 1628
    return v3

    .line 1629
    :cond_1
    const v1, 0x7f0e022f

    if-ne v0, v1, :cond_2

    .line 1630
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1631
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    .line 1632
    return v3

    .line 1633
    :cond_2
    const v1, 0x7f0e022c

    if-ne v0, v1, :cond_3

    .line 1634
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1635
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1634
    invoke-static {v2}, Lcom/android/dialer/util/IntentUtil;->getConferenceDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1636
    return v3

    .line 1638
    :cond_3
    return v4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 768
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 771
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 772
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 776
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 778
    invoke-static {}, Lcom/android/dialer/SpecialCharSequenceMgr;->cleanup()V

    .line 767
    return-void
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pressed"    # Z

    .prologue
    .line 891
    if-eqz p2, :cond_d

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 893
    .local v0, "resId":I
    const v1, 0x7f0e0141

    if-ne v0, v1, :cond_1

    .line 894
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    .line 920
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v0    # "resId":I
    :cond_0
    :goto_1
    return-void

    .line 895
    .restart local v0    # "resId":I
    :cond_1
    const v1, 0x7f0e0132

    if-ne v0, v1, :cond_2

    .line 896
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 897
    :cond_2
    const v1, 0x7f0e0133

    if-ne v0, v1, :cond_3

    .line 898
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 899
    :cond_3
    const v1, 0x7f0e0134

    if-ne v0, v1, :cond_4

    .line 900
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 901
    :cond_4
    const v1, 0x7f0e0135

    if-ne v0, v1, :cond_5

    .line 902
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 903
    :cond_5
    const v1, 0x7f0e0136

    if-ne v0, v1, :cond_6

    .line 904
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 905
    :cond_6
    const v1, 0x7f0e0137

    if-ne v0, v1, :cond_7

    .line 906
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 907
    :cond_7
    const v1, 0x7f0e0138

    if-ne v0, v1, :cond_8

    .line 908
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 909
    :cond_8
    const v1, 0x7f0e0139

    if-ne v0, v1, :cond_9

    .line 910
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 911
    :cond_9
    const v1, 0x7f0e0145

    if-ne v0, v1, :cond_a

    .line 912
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 913
    :cond_a
    const v1, 0x7f0e0143

    if-ne v0, v1, :cond_b

    .line 914
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 915
    :cond_b
    const v1, 0x7f0e0144

    if-ne v0, v1, :cond_c

    .line 916
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 918
    :cond_c
    const-string/jumbo v1, "DialpadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 922
    .end local v0    # "resId":I
    :cond_d
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 923
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 704
    const-string/jumbo v5, "DialpadFragment onResume"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 705
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 707
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    .line 708
    .local v0, "activity":Lcom/android/dialer/DialtactsActivity;
    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    .line 710
    const-string/jumbo v5, "Dialpad.onResume"

    invoke-static {v5}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v2

    .line 714
    .local v2, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 716
    const-string/jumbo v5, "qloc"

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 722
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "dtmf_tone"

    .line 721
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 724
    const-string/jumbo v3, "dtwd"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v3, "hptc"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 728
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 730
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/app/Activity;)V

    .line 732
    const-string/jumbo v3, "fdin"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    .line 739
    :cond_0
    const-string/jumbo v3, "hnt"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    .line 743
    const-string/jumbo v3, "bes"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 745
    const-string/jumbo v3, "DialpadFragment"

    const/16 v5, 0x32

    invoke-virtual {v2, v3, v5}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 750
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v3}, Lcom/android/phone/common/dialpad/DialpadView;->getOverflowMenuButton()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    .line 751
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->buildOptionsMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowPopupMenu:Landroid/widget/PopupMenu;

    .line 752
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 753
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    if-eqz v3, :cond_1

    .line 759
    invoke-virtual {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->onHiddenChanged(Z)V

    .line 762
    :cond_1
    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 763
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 703
    return-void

    :cond_2
    move v3, v4

    .line 721
    goto :goto_0

    :cond_3
    move v3, v4

    .line 754
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 800
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 801
    const-string/jumbo v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 799
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    .line 680
    const-string/jumbo v1, "DialpadFragment onStart"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 681
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 685
    .local v2, "start":J
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 688
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v7, 0x8

    const/16 v8, 0x50

    invoke-direct {v1, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v6

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 696
    .local v4, "total":J
    const-wide/16 v6, 0x32

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 697
    const-string/jumbo v1, "DialpadFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Time for ToneGenerator creation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 679
    return-void

    .line 689
    .end local v4    # "total":J
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v1, "DialpadFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception caught while creating local tone generator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 685
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 783
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 785
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 792
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_1

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 794
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    .line 782
    :cond_1
    return-void

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 321
    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 323
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 325
    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateMenuOverflowButton(Z)V

    .line 320
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public process_quote_emergency_unquote(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1861
    const-string/jumbo v0, "01189998819991197253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    .line 1864
    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/dialpad/DialpadFragment$4;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 1863
    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;-><init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->start()V

    .line 1860
    :cond_1
    :goto_0
    return-void

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->end()V

    goto :goto_0
.end method

.method public setAnimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1842
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    .line 1841
    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 596
    return-void
.end method

.method public setYFraction(F)V
    .locals 1
    .param p1, "yFraction"    # F

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;->setYFraction(F)V

    .line 1849
    return-void
.end method

.method public showDialConference(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 986
    return-void

    .line 988
    :cond_0
    const-string/jumbo v2, "DialpadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialConference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 999
    .local v0, "conferenceButtonVisibility":I
    :goto_0
    if-eqz p1, :cond_7

    const/16 v1, 0x8

    .line 1002
    .local v1, "nonConferenceButtonVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 1005
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1006
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1007
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1009
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz p1, :cond_8

    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;

    if-eqz v2, :cond_5

    .line 1012
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;

    invoke-interface {v2, p1}, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;->setConferenceDialButtonImage(Z)V

    .line 982
    :cond_5
    return-void

    .line 997
    .end local v0    # "conferenceButtonVisibility":I
    .end local v1    # "nonConferenceButtonVisibility":I
    :cond_6
    const/16 v0, 0x8

    .restart local v0    # "conferenceButtonVisibility":I
    goto :goto_0

    .line 999
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "nonConferenceButtonVisibility":I
    goto :goto_1

    .line 1009
    :cond_8
    const/4 v2, 0x0

    goto :goto_2
.end method
