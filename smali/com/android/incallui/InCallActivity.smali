.class public Lcom/android/incallui/InCallActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/FragmentDisplayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$1;,
        Lcom/android/incallui/InCallActivity$2;,
        Lcom/android/incallui/InCallActivity$3;,
        Lcom/android/incallui/InCallActivity$4;,
        Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;,
        Lcom/android/incallui/InCallActivity$TabListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;


# instance fields
.field private final TAB_COUNT_ONE:I

.field private final TAB_COUNT_TWO:I

.field private final TAB_POSITION_FIRST:I

.field private isAnimationRunning:Z

.field private isMoveTaskToBack:Z

.field private isSlideOuting:Z

.field private mAnimateDialpadOnShow:Z

.field private mAnimationExit:Landroid/view/animation/Animation;

.field private mAnimationExitListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

.field private mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

.field private mChildFragmentManager:Landroid/app/FragmentManager;

.field private mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private mDeclineByMsg:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

.field private mDismissKeyguard:Z

.field private mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

.field private mDsdaTab:[Landroid/app/ActionBar$Tab;

.field private mDsdaTabAdd:[Z

.field private mDtmfText:Ljava/lang/String;

.field mHander:Landroid/os/Handler;

.field private mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

.field private mIsLandscape:Z

.field private mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

.field protected final mOPReceiver:Landroid/content/BroadcastReceiver;

.field private mOldConfig:Landroid/content/res/Configuration;

.field private mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private mShowDialpadRequest:I

.field private mShowPostCharWaitDialogCallId:Ljava/lang/String;

.field private mShowPostCharWaitDialogChars:Ljava/lang/String;

.field private mShowPostCharWaitDialogOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/InCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->isSlideOuting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->opQueryContactsInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->showDapidDisplay()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/incallui/InCallActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/incallui/InCallActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "executeImmediately"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    .line 153
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallActivity;->URI_PHONE_FEATURE:Landroid/net/Uri;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    .line 165
    new-instance v0, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOPReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 173
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isSlideOuting:Z

    .line 174
    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationExitListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 197
    iput v3, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 219
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mDismissKeyguard:Z

    .line 221
    iput v3, p0, Lcom/android/incallui/InCallActivity;->TAB_COUNT_ONE:I

    .line 222
    iput v2, p0, Lcom/android/incallui/InCallActivity;->TAB_COUNT_TWO:I

    .line 223
    iput v1, p0, Lcom/android/incallui/InCallActivity;->TAB_POSITION_FIRST:I

    .line 225
    new-array v0, v2, [Landroid/app/ActionBar$Tab;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    .line 226
    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    .line 228
    new-instance v0, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 238
    new-instance v0, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 1617
    new-instance v0, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHander:Landroid/os/Handler;

    .line 115
    return-void

    .line 226
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private addDsdaTab(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1308
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1309
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    .line 1311
    .local v1, "tabCount":I
    if-ge v1, p1, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 1316
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addDsdaTab, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tab count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    return-void

    .line 1314
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, p1, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    goto :goto_0
.end method

.method public static callBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1404
    invoke-static {p0}, Lcom/android/incallui/InCallActivity;->isPhoneFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    return-object v2

    .line 1407
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallActivity;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private createNewFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1024
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    new-instance v0, Lcom/android/incallui/OPDialpadFragment;

    invoke-direct {v0}, Lcom/android/incallui/OPDialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    .line 1026
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    return-object v0

    .line 1027
    :cond_0
    const-string/jumbo v0, "tag_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1028
    invoke-static {p0}, Lcom/android/incallui/util/AccessibilityUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    new-instance v0, Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-direct {v0}, Lcom/android/incallui/AccessibleAnswerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    .line 1033
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    return-object v0

    .line 1031
    :cond_1
    new-instance v0, Lcom/android/incallui/OPGlowPadAnswerFragment;

    invoke-direct {v0}, Lcom/android/incallui/OPGlowPadAnswerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    goto :goto_0

    .line 1034
    :cond_2
    const-string/jumbo v0, "tag_conference_manager_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    new-instance v0, Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    .line 1036
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    return-object v0

    .line 1037
    :cond_3
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1038
    new-instance v0, Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/OPCallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    .line 1039
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    return-object v0

    .line 1041
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContainerIdForFragment(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0e0165

    .line 1073
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    const v0, 0x7f0e01ae

    return v0

    .line 1075
    :cond_0
    const-string/jumbo v0, "tag_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    const v0, 0x7f0e01af

    return v0

    .line 1077
    :cond_1
    const-string/jumbo v0, "tag_conference_manager_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    return v1

    .line 1079
    :cond_2
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1080
    return v1

    .line 1082
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultLetterPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupKey"    # Ljava/lang/String;
    .param p3, "phonebookLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1689
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lookupKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phonebookLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    :cond_0
    return-object v3

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    if-nez v0, :cond_2

    .line 1692
    new-instance v0, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    invoke-direct {v0, p1}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    new-instance v1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    const/4 v2, 0x1

    invoke-direct {v1, p3, p2, v2}, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;->getDefaultLetterPhoto(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1045
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 1047
    :cond_0
    const-string/jumbo v0, "tag_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 1049
    :cond_1
    const-string/jumbo v0, "tag_conference_manager_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_2
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1052
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScreenTypeForTag(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1058
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    const/16 v0, 0x10

    return v0

    .line 1058
    :cond_0
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    const/16 v0, 0xd

    return v0

    .line 1058
    :cond_1
    const-string/jumbo v0, "tag_conference_manager_fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    const/16 v0, 0xf

    return v0

    .line 1058
    :cond_2
    const-string/jumbo v0, "tag_answer_fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1066
    const/16 v0, 0xe

    return v0

    .line 1068
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPDialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/OPDialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasAnswerDialogs()Z
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->hasPendingDialogs()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPendingDialogs()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->hasPendingDialogs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCsRedialHandler;->hasPendingDialogs()Z

    move-result v0

    .line 615
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initializeDsdaSwitchTab()V
    .locals 8

    .prologue
    .line 1270
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    .line 1271
    .local v3, "phoneCount":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1272
    .local v0, "bar":Landroid/app/ActionBar;
    new-array v2, v3, [Landroid/view/View;

    .line 1273
    .local v2, "mDsdaTabLayout":[Landroid/view/View;
    const v5, 0x7f0d0407

    const v6, 0x7f0d0408

    filled-new-array {v5, v6}, [I

    move-result-object v4

    .line 1275
    .local v4, "subString":[I
    sget-object v5, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initializeDsdaSwitchTab"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1278
    const v6, 0x7f04006e

    const/4 v7, 0x0

    .line 1277
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1280
    aget-object v5, v2, v1

    const v6, 0x7f0e0174

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1281
    aget v6, v4, v1

    .line 1280
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1283
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 1284
    new-instance v7, Lcom/android/incallui/InCallActivity$TabListener;

    invoke-direct {v7, p0, v1}, Lcom/android/incallui/InCallActivity$TabListener;-><init>(Lcom/android/incallui/InCallActivity;I)V

    .line 1283
    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 827
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "internalResolveIntent"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallScreen()V

    .line 832
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/InCallActivity;->updateRapidDisplay(Landroid/content/Intent;Ljava/lang/String;)V

    .line 835
    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getRapidDisplay()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 841
    :cond_0
    const-string/jumbo v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 846
    const-string/jumbo v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 847
    .local v7, "showDialpad":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 851
    .end local v7    # "showDialpad":Z
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NEW_OUTGOING_CALL_EXTRA: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    const/4 v4, 0x0

    .line 853
    .local v4, "newOutgoingCall":Z
    const-string/jumbo v9, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 854
    const-string/jumbo v9, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 856
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_2

    .line 857
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 860
    :cond_2
    const/4 v3, 0x0

    .line 861
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 862
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 864
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_3
    if-nez v3, :cond_4

    .line 866
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 869
    :cond_4
    const/4 v8, 0x0

    .line 870
    .local v8, "touchPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/common/interactions/TouchPointManager;->hasValidPoint()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 872
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/common/interactions/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v8

    .line 881
    .end local v8    # "touchPoint":Landroid/graphics/Point;
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getRapidDisplay()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 882
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 888
    :cond_6
    invoke-virtual {p0, v12}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 894
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 895
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v9

    .line 894
    if-eqz v9, :cond_7

    .line 896
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 899
    :cond_7
    invoke-virtual {p0, v12}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 900
    const/4 v4, 0x1

    .line 903
    .end local v1    # "call":Lcom/android/incallui/Call;
    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 906
    .local v5, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pendingAccountSelectionCall = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    if-nez v5, :cond_9

    .line 908
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissSelectPhoneAccountDialog()V

    .line 911
    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-eqz v9, :cond_d

    if-eqz v5, :cond_d

    .line 912
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, v12}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 941
    :cond_a
    :goto_1
    const-string/jumbo v9, "InCallActivity.decline_by_msg"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 946
    const-string/jumbo v9, "InCallActivity.decline_by_msg"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mDeclineByMsg:Z

    .line 947
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "- internalResolveIntent: DECLINE_BY_MSG_EXTRA: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mDeclineByMsg:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    :cond_b
    return-void

    .line 875
    .end local v5    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v8    # "touchPoint":Landroid/graphics/Point;
    :cond_c
    if-eqz v1, :cond_5

    .line 876
    const-string/jumbo v9, "touchPoint"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "touchPoint":Landroid/graphics/Point;
    check-cast v8, Landroid/graphics/Point;

    .local v8, "touchPoint":Landroid/graphics/Point;
    goto/16 :goto_0

    .line 914
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v8    # "touchPoint":Landroid/graphics/Point;
    .restart local v5    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    :cond_d
    if-eqz v5, :cond_f

    .line 915
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->queryCallInfo(Lcom/android/incallui/Call;)V

    .line 916
    invoke-virtual {p0, v11}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 918
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 921
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_e

    .line 923
    const-string/jumbo v9, "selectPhoneAccountAccounts"

    .line 922
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 927
    .local v6, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string/jumbo v10, "tag_select_acct_fragment"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 928
    .local v2, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SelectPhoneAccountDialogFragment dialogFragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    if-nez v2, :cond_a

    .line 932
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 931
    const v10, 0x7f0d01e1

    .line 930
    invoke-static {v10, v12, v6, v9}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v2

    .line 933
    if-eqz v2, :cond_a

    .line 934
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string/jumbo v10, "tag_select_acct_fragment"

    invoke-virtual {v2, v9, v10}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 925
    .end local v2    # "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .end local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    goto :goto_2

    .line 937
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_f
    if-nez v4, :cond_a

    .line 938
    invoke-virtual {p0, v12}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    goto/16 :goto_1

    .line 826
    .end local v4    # "newOutgoingCall":Z
    .end local v5    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    :cond_10
    return-void
.end method

.method public static isPhoneFeatureEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1399
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 1400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallActivity;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1399
    :cond_0
    return v0
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1247
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->onErrorDialogDismissed()V

    .line 1248
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 1245
    return-void
.end method

.method private opQueryContactsInfo(Ljava/lang/String;)V
    .locals 27
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1511
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "opQueryContactsInfo number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getSlotId()I

    move-result v24

    .line 1514
    .local v24, "slotId":I
    invoke-static/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v26

    .line 1515
    .local v26, "subIds":[I
    const/16 v25, -0x1

    .line 1516
    .local v25, "subId":I
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v4, v0

    if-lez v4, :cond_0

    .line 1517
    const/4 v4, 0x0

    aget v25, v26, v4

    .line 1519
    :cond_0
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slotId:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "subId:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isVoiceNumber(Ljava/lang/String;I)Z

    move-result v16

    .line 1521
    .local v16, "isVoiceMail":Z
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    .line 1523
    .local v15, "isEmergency":Z
    const/16 v20, 0x0

    .line 1524
    .local v20, "numberType":I
    const/16 v18, 0x0

    .line 1525
    .local v18, "name":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1526
    .local v23, "photo":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 1528
    .local v19, "normalizedNumber":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 1529
    const/16 v20, 0x1

    .line 1530
    invoke-static/range {p0 .. p0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 1531
    .local v18, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02028d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1604
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "normalizedNumber":Ljava/lang/String;
    .end local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1607
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 1606
    invoke-static {v4, v6}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1605
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallNumber(Ljava/lang/String;)V

    .line 1608
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CountryIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1609
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 1608
    invoke-static {v7, v8}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :cond_2
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setOutCallName name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    invoke-static/range {v18 .. v18}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallName(Ljava/lang/String;)V

    .line 1613
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setCallNumberType(I)V

    .line 1614
    invoke-static/range {v23 .. v23}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 1510
    return-void

    .line 1532
    .local v18, "name":Ljava/lang/String;
    .restart local v19    # "normalizedNumber":Ljava/lang/String;
    .restart local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v15, :cond_4

    .line 1533
    const/16 v20, 0x2

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1535
    .local v18, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020213

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .local v23, "photo":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1537
    .local v18, "name":Ljava/lang/String;
    .local v23, "photo":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 1539
    const-string/jumbo v6, "sip"

    .line 1540
    const-string/jumbo v7, "false"

    .line 1537
    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1542
    .local v5, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1544
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1545
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "display_name"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "photo_uri"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string/jumbo v7, "lookup"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string/jumbo v7, "phonebook_label"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string/jumbo v7, "normalized_number"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 1546
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1544
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1547
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 1548
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1549
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1550
    .local v18, "name":Ljava/lang/String;
    const-string/jumbo v4, "photo_uri"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1551
    .local v10, "columnIndex":I
    const/4 v4, -0x1

    if-eq v10, v4, :cond_7

    .line 1552
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const/4 v11, 0x0

    .line 1553
    :goto_1
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "contactDisplayPhotoUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    if-nez v11, :cond_a

    .line 1555
    const/16 v22, 0x0

    .line 1556
    .local v22, "phonebookLabel":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1557
    .local v17, "lookupKey":Ljava/lang/String;
    const-string/jumbo v4, "phonebook_label"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1558
    const/4 v4, -0x1

    if-eq v10, v4, :cond_5

    .line 1559
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1561
    .end local v22    # "phonebookLabel":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "lookup"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1562
    const/4 v4, -0x1

    if-eq v10, v4, :cond_6

    .line 1563
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1565
    .end local v17    # "lookupKey":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lookupKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", phonebookLabel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/InCallActivity;->getDefaultLetterPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1585
    .end local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_2
    const-string/jumbo v4, "normalized_number"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1586
    const/4 v4, -0x1

    if-eq v10, v4, :cond_8

    .line 1587
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1588
    .local v19, "normalizedNumber":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "normalizedNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    .end local v19    # "normalizedNumber":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x3

    .line 1599
    .end local v10    # "columnIndex":I
    .end local v18    # "name":Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_1

    .line 1600
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1552
    .restart local v10    # "columnIndex":I
    .restart local v18    # "name":Ljava/lang/String;
    .local v19, "normalizedNumber":Ljava/lang/String;
    .restart local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_9
    :try_start_1
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .local v11, "contactDisplayPhotoUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1568
    .end local v11    # "contactDisplayPhotoUri":Landroid/net/Uri;
    :cond_a
    const/4 v14, 0x0

    .line 1570
    .local v14, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1571
    .local v14, "inputStream":Ljava/io/InputStream;
    if-eqz v14, :cond_b

    .line 1572
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1573
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x2

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1574
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v7, v14, v4, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v23

    .line 1579
    .end local v21    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz v14, :cond_7

    .line 1580
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1596
    .end local v10    # "columnIndex":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "normalizedNumber":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1597
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1599
    if-eqz v12, :cond_1

    .line 1600
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1576
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "columnIndex":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "normalizedNumber":Ljava/lang/String;
    .restart local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v13

    .line 1577
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1579
    if-eqz v14, :cond_7

    .line 1580
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1598
    .end local v10    # "columnIndex":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "normalizedNumber":Ljava/lang/String;
    .end local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    .line 1599
    if-eqz v12, :cond_c

    .line 1600
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1598
    :cond_c
    throw v4

    .line 1578
    .restart local v10    # "columnIndex":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "normalizedNumber":Ljava/lang/String;
    .restart local v23    # "photo":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v4

    .line 1579
    if-eqz v14, :cond_d

    .line 1580
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 1578
    :cond_d
    throw v4

    .line 1594
    .end local v10    # "columnIndex":I
    .local v18, "name":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setIsStranger(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private opRapdiDisplayUi()V
    .locals 3

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1497
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getOutCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1499
    return-void

    .line 1501
    :cond_0
    new-instance v2, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity$7;->start()V

    .line 1495
    return-void
.end method

.method private queryCallInfo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "pendingAccountSelectionCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 1664
    if-eqz p1, :cond_1

    .line 1665
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "voicemail"

    .line 1666
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1665
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1667
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isMaybeVoiceMail(Ljava/lang/String;)Z

    move-result v0

    .line 1668
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMaybeVoiceMail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    if-nez v0, :cond_1

    .line 1670
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 1663
    :cond_1
    return-void

    .line 1665
    :cond_2
    const/4 v0, 0x1

    .local v0, "isMaybeVoiceMail":Z
    goto :goto_0
.end method

.method private relaunchedFromDialer(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 963
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 964
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 966
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-ne v1, v2, :cond_0

    .line 969
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 970
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 971
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 962
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 963
    goto :goto_0
.end method

.method private removeDsdaTab(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1322
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    .line 1324
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1325
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1326
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 1327
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, p1

    .line 1328
    return-void

    .line 1324
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1331
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDsdaTab, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tab count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1778
    const-string/jumbo v0, "reset"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1779
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->startViewAnimation(Z)V

    .line 1780
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 1781
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 1782
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/incallui/OPDialpadFragment;->setDtmfText(Ljava/lang/String;)V

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/OPCallButtonFragment;->displayDialpad(ZZ)V

    .line 1787
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallButtonFragment;->reset()V

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_2

    .line 1790
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->reset()V

    .line 1792
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_3

    .line 1793
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->reset()V

    .line 1795
    :cond_3
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isAnimationRunning:Z

    .line 1796
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    .line 1797
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1798
    invoke-static {p0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->clearCache()V

    .line 1799
    invoke-static {p0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPSilenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->clearListener()V

    .line 1800
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->reset()V

    .line 1801
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->clearMembers()V

    .line 1777
    return-void
.end method

.method private showDapidDisplay()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1629
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "showDapidDisplay "

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getYuloreInfo()Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    move-result-object v9

    .line 1632
    .local v9, "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_0

    .line 1633
    if-eqz v9, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0, v9}, Lcom/android/incallui/OPCallCardFragment;->updatePrimarYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getCallNumberType()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    const/4 v8, 0x1

    .line 1637
    .local v8, "isEmergency":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getCallNumberType()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    const/4 v7, 0x1

    .line 1638
    .local v7, "isVoiceMail":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getOutCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1639
    .local v1, "number":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1640
    .local v2, "name":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1641
    const/4 v1, 0x0

    .line 1643
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 1644
    .local v3, "nameIsNumber":Z
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getOutCallName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1645
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getOutCallNumber()Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1648
    const/4 v1, 0x0

    .line 1652
    :goto_3
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "name = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getOutCallPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1654
    .local v5, "photo":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    .line 1655
    const/4 v6, 0x0

    .line 1654
    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/OPCallCardFragment;->updatePrimaryInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 1656
    if-eqz v5, :cond_0

    .line 1657
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 1636
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameIsNumber":Z
    .end local v5    # "photo":Landroid/graphics/drawable/Drawable;
    .end local v7    # "isVoiceMail":Z
    .end local v8    # "isEmergency":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "isEmergency":Z
    goto :goto_1

    .line 1637
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "isVoiceMail":Z
    goto :goto_2

    .line 1650
    .local v2, "name":Ljava/lang/String;
    .restart local v3    # "nameIsNumber":Z
    :cond_5
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getOutCallName()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    goto :goto_3
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1218
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Show Dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1221
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisible(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1225
    new-instance v1, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;)V

    const v2, 0x104000a

    .line 1223
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1231
    new-instance v1, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 1223
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1239
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1240
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1217
    :cond_0
    return-void
.end method

.method private showFragment(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "executeImmediately"    # Z

    .prologue
    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showFragment - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 990
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;

    move-result-object v0

    .line 992
    .local v0, "fm":Landroid/app/FragmentManager;
    if-nez v0, :cond_0

    .line 993
    sget-object v3, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fragment manager is null for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    return-void

    .line 997
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 998
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez p2, :cond_1

    if-nez v1, :cond_1

    .line 1000
    return-void

    .line 1003
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1004
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_4

    .line 1005
    if-nez v1, :cond_3

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->createNewFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1007
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getContainerIdForFragment(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1011
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getScreenTypeForTag(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 1016
    :goto_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1017
    if-eqz p3, :cond_2

    .line 1018
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1020
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 988
    return-void

    .line 1009
    :cond_3
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1013
    :cond_4
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private startViewAnimation(Z)V
    .locals 8
    .param p1, "flag"    # Z

    .prologue
    .line 1748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startViewAnimation flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1749
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1750
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1751
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1752
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "translationY"

    const/4 v3, 0x1

    new-array v6, v3, [F

    if-eqz p1, :cond_1

    int-to-float v3, v0

    :goto_0
    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1753
    .local v1, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1754
    new-instance v3, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v3, p0, p1}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1773
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1747
    .end local v0    # "height":I
    .end local v1    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 1752
    .restart local v0    # "height":I
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateDsdaTabSelection()V
    .locals 4

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1336
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    .line 1338
    .local v1, "barCount":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1339
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1341
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v2

    .line 1343
    .local v2, "phoneId":I
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method private updateRapidDisplay(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1480
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.oneplus.incallui.main"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->clearMembers()V

    .line 1482
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setRapidDisplay(Z)V

    .line 1483
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->enableRapidDialLock()V

    .line 1484
    const-string/jumbo v0, "call_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallNumber(Ljava/lang/String;)V

    .line 1485
    const-string/jumbo v0, "op_outgoing_call_slot_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setSlotId(I)V

    .line 1486
    const-string/jumbo v0, "op_outgoing_call_audio_support"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setSupportAudioMode(I)V

    .line 1487
    const-string/jumbo v0, "op_outgoing_call_audio_route"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setAudioMode(I)V

    .line 1488
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->opRapdiDisplayUi()V

    .line 1479
    :goto_0
    return-void

    .line 1490
    :cond_0
    invoke-static {v2}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setRapidDisplay(Z)V

    .line 1491
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->releaseRapidDialLock()V

    goto :goto_0
.end method


# virtual methods
.method public declineByMsg()V
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->onText()V

    .line 1807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mDeclineByMsg:Z

    .line 1804
    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 977
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mDismissKeyguard:Z

    if-ne v0, p1, :cond_0

    .line 978
    return-void

    .line 980
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mDismissKeyguard:Z

    .line 981
    if-eqz p1, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 976
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1203
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1205
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogs()V

    .line 1210
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCsRedialHandler;->dismissPendingDialogs()V

    .line 1211
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 1202
    return-void
.end method

.method public dismissSelectPhoneAccountDialog()V
    .locals 3

    .prologue
    .line 1813
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_select_acct_fragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1812
    check-cast v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 1814
    .local v0, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->dismiss()V

    .line 1811
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1189
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, v2, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 738
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 739
    const/4 v1, 0x1

    return v1

    .line 742
    .end local v0    # "handled":Z
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1391
    if-eqz p1, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    .line 1390
    :goto_0
    return-void

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/InCallOrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish().  Dialog showing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasAnswerDialogs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->turnOffProximitySensor()V

    .line 628
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisible(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "isAnimationRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isAnimationRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->startViewAnimation(Z)V

    .line 620
    :cond_1
    :goto_1
    return-void

    .line 621
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->handleFinish()V

    goto :goto_1

    .line 640
    :cond_4
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    goto :goto_1
.end method

.method public finish(Z)V
    .locals 2
    .param p1, "bool"    # Z

    .prologue
    .line 1700
    if-eqz p1, :cond_4

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1702
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasAnswerDialogs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isAnimationRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isMoveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1704
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    if-eqz v0, :cond_3

    .line 1699
    :cond_1
    :goto_1
    return-void

    .line 1701
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1705
    :cond_3
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    goto :goto_1

    .line 1709
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    goto :goto_1
.end method

.method public getAnswerFragment()Lcom/android/incallui/AnswerFragment;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    return-object v0
.end method

.method public getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    return-object v0
.end method

.method public getCallRecordingTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    .line 1440
    const-wide/16 v2, 0x0

    .line 1441
    .local v2, "time":J
    const-string/jumbo v4, "get_call_record_duration"

    invoke-static {p0, v4}, Lcom/android/incallui/InCallActivity;->callBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1443
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1444
    const-string/jumbo v4, "result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 1447
    :cond_0
    const-string/jumbo v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    div-long v6, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    rem-long v6, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "recordingTime":Ljava/lang/String;
    return-object v0
.end method

.method public handleFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1732
    const-string/jumbo v0, "handleFinish"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    iget-boolean v0, v0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-eqz v0, :cond_2

    .line 1734
    :cond_0
    const-string/jumbo v0, "moveTaskToBack"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1735
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->moveTaskToBack(Z)Z

    .line 1736
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    .line 1741
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasAnyLiveCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1731
    :cond_1
    :goto_1
    return-void

    .line 1738
    :cond_2
    const-string/jumbo v0, "super"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1739
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    goto :goto_0

    .line 1742
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1743
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->reset()V

    goto :goto_1
.end method

.method public hideInCallScreen()V
    .locals 1

    .prologue
    .line 1828
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 1827
    return-void
.end method

.method public isCallRecording()Z
    .locals 3

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, "isRecording":Z
    const-string/jumbo v2, "is_call_record_running"

    invoke-static {p0, v2}, Lcom/android/incallui/InCallActivity;->callBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1414
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1415
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1418
    .end local v0    # "isRecording":Z
    :cond_0
    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPDialpadFragment;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isSafeToCommitTransactions()Z

    move-result v0

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1714
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    .line 1715
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1716
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1713
    :cond_0
    :goto_0
    return-void

    .line 1717
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1718
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1722
    :cond_2
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 672
    const-string/jumbo v1, "onBackPressed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 688
    return-void

    .line 681
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/OPCallCardFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 682
    :cond_3
    return-void

    .line 689
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/OPDialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 690
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/OPCallButtonFragment;->displayDialpad(ZZ)V

    .line 691
    return-void

    .line 696
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 697
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_6

    .line 698
    const-string/jumbo v1, "Consume Back press for an incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    return-void

    .line 703
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->turnOffProximitySensor()V

    .line 704
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->hideInCallScreen()V

    .line 707
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->moveTaskToBack(Z)Z

    .line 671
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 561
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 565
    const-string/jumbo v2, "incallui config changed, screen size: w%ddp x h%ddp old:w%ddp x h%ddp"

    .line 564
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 566
    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 567
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 564
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 580
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 581
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 582
    .local v0, "densityDpi":I
    sget-object v2, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screenHeightDp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", densityDpi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const v3, 0x31380

    div-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->recreate()V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    if-eqz v2, :cond_2

    .line 587
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/OPCallButtonFragment;->updateViews()V

    .line 589
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v2, :cond_3

    .line 590
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/OPCallCardFragment;->updateViews()V

    .line 591
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    iget-boolean v2, v2, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-nez v2, :cond_3

    .line 592
    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    .line 595
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v2}, Lcom/android/incallui/AnswerFragment;->updateViews()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 254
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCreate()...  this = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 260
    const v2, 0x288000

    .line 264
    .local v2, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->addFlags(I)V

    .line 265
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v3

    .line 266
    .local v3, "isDsdaEnabled":Z
    if-eqz v3, :cond_5

    .line 267
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->requestWindowFeature(I)Z

    .line 268
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 283
    :cond_0
    :goto_0
    const v6, 0x7f040064

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/16 v10, 0x500

    invoke-virtual {v6, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 287
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v10, -0x80000000

    invoke-virtual {v6, v10}, Landroid/view/Window;->addFlags(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_6

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    if-ne v6, v7, :cond_7

    const/4 v4, 0x1

    .line 299
    .local v4, "isRtl":Z
    :goto_2
    iget-boolean v6, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v6, :cond_a

    .line 301
    if-eqz v4, :cond_8

    const v6, 0x7f050018

    .line 300
    :goto_3
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 303
    if-eqz v4, :cond_9

    const v6, 0x7f05001b

    .line 302
    :goto_4
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    .line 311
    :goto_5
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    sget-object v10, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 312
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    sget-object v10, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 317
    const v6, 0x7f050028

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mAnimationExit:Landroid/view/animation/Animation;

    .line 318
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mAnimationExit:Landroid/view/animation/Animation;

    sget-object v10, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mAnimationExit:Landroid/view/animation/Animation;

    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mAnimationExitListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 327
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-class v10, Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 328
    .local v1, "existingFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 329
    check-cast v1, Lcom/android/incallui/OPDialpadFragment;

    .end local v1    # "existingFragment":Landroid/app/Fragment;
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    .line 332
    :cond_1
    if-eqz p1, :cond_3

    .line 337
    const-string/jumbo v6, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    const/4 v5, 0x0

    .line 339
    .local v5, "showDialpad":Z
    if-eqz v5, :cond_b

    move v6, v9

    :goto_6
    iput v6, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 340
    iput-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 342
    .end local v5    # "showDialpad":Z
    :cond_2
    const-string/jumbo v6, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v8, "tag_select_acct_fragment"

    invoke-virtual {v6, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 344
    check-cast v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 346
    .local v0, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    if-eqz v0, :cond_3

    .line 347
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 350
    .end local v0    # "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    :cond_3
    new-instance v6, Lcom/android/incallui/InCallOrientationEventListener;

    invoke-direct {v6, p0}, Lcom/android/incallui/InCallOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    .line 352
    if-eqz v3, :cond_4

    .line 353
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeDsdaSwitchTab()V

    .line 355
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallPresenter;->setIsFirstUp(Z)V

    .line 357
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallPresenter;->setInCallUIStarted(Z)V

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate(): exit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    return-void

    .line 272
    .end local v4    # "isRtl":Z
    :cond_5
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->requestWindowFeature(I)Z

    .line 273
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->hide()V

    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 293
    goto/16 :goto_1

    .line 296
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "isRtl":Z
    goto/16 :goto_2

    .line 301
    :cond_8
    const v6, 0x7f050019

    goto/16 :goto_3

    .line 303
    :cond_9
    const v6, 0x7f05001c

    goto/16 :goto_4

    .line 306
    :cond_a
    const v6, 0x7f050029

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 307
    const v6, 0x7f05002a

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_5

    .line 339
    .restart local v5    # "showDialpad":Z
    :cond_b
    const/4 v6, 0x3

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 522
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 524
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "InCallActivity.decline_by_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 527
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasAnyLiveCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 529
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->reset()V

    .line 532
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onDestroy()V

    .line 533
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setIsFirstUp(Z)V

    .line 519
    return-void
.end method

.method public onFragmentAttached(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 545
    instance-of v0, p1, Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_1

    .line 546
    check-cast p1, Lcom/android/incallui/OPDialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 547
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_2

    .line 548
    check-cast p1, Lcom/android/incallui/AnswerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    goto :goto_0

    .line 549
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    instance-of v0, p1, Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_3

    .line 550
    check-cast p1, Lcom/android/incallui/OPCallCardFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    .line 551
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    goto :goto_0

    .line 552
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    instance-of v0, p1, Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v0, :cond_4

    .line 553
    check-cast p1, Lcom/android/incallui/ConferenceManagerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    goto :goto_0

    .line 554
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    instance-of v0, p1, Lcom/android/incallui/OPCallButtonFragment;

    if-eqz v0, :cond_0

    .line 555
    check-cast p1, Lcom/android/incallui/OPCallButtonFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 747
    sparse-switch p1, :sswitch_data_0

    .line 795
    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 796
    return v4

    .line 749
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    .line 750
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 751
    const-string/jumbo v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    :cond_1
    return v4

    .line 766
    .end local v1    # "handled":Z
    :sswitch_2
    return v4

    .line 776
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 777
    return v4

    :cond_2
    move v3, v4

    .line 776
    goto :goto_0

    .line 781
    :sswitch_4
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    .line 782
    const-string/jumbo v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 785
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "decorView":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "View dump:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    return v4

    .line 798
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "w":Landroid/view/Window;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 747
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x46 -> :sswitch_0
        0x4c -> :sswitch_4
        0x5b -> :sswitch_3
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 724
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPDialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/OPDialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 724
    if-eqz v0, :cond_0

    .line 726
    return v1

    .line 727
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 729
    return v1

    .line 731
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 650
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 713
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 714
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    .line 716
    const/4 v1, 0x1

    return v1

    .line 718
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    const-string/jumbo v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/OPDialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 482
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 486
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onPause()V

    .line 477
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 406
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onResume()V

    .line 410
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 413
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    .line 416
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mDeclineByMsg:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->declineByMsg()V

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallScreen()V

    .line 423
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-eq v0, v2, :cond_4

    .line 424
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 426
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "display dialpad"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    const-string/jumbo v0, "onResume : force hide dialpad"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    invoke-virtual {v0, v4, v4}, Lcom/android/incallui/OPCallButtonFragment;->displayDialpad(ZZ)V

    .line 432
    :cond_1
    return-void

    .line 437
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 439
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    .line 440
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 439
    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/OPCallButtonFragment;->displayDialpad(ZZ)V

    .line 441
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 443
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/OPDialpadFragment;->setDtmfText(Ljava/lang/String;)V

    .line 445
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 463
    :cond_3
    :goto_0
    iput v2, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 466
    :cond_4
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v0, :cond_5

    .line 467
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setInCallUIStarted(Z)V

    .line 405
    return-void

    .line 448
    :cond_6
    const-string/jumbo v0, "onResume : force hide dialpad"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/OPCallCardFragment;->whenShowDialpad(ZZ)V

    .line 456
    :cond_7
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-direct {p0, v0, v4, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 457
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/incallui/OPDialpadFragment;->setDtmfText(Ljava/lang/String;)V

    .line 459
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 365
    const-string/jumbo v1, "InCallActivity.show_dialpad"

    .line 366
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/OPCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallButtonFragment;->isDialpadVisible()Z

    move-result v0

    .line 365
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    .line 368
    const-string/jumbo v0, "InCallActivity.dialpad_text"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/OPDialpadFragment;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    return-void

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 375
    sget-object v3, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onStart()..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStart()V

    .line 379
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissSelectPhoneAccountDialog()V

    .line 381
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 382
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->startViewAnimation(Z)V

    .line 384
    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    .line 385
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.op.intent.action.finish_incall_activity"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "opIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mOPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v3

    .line 393
    sget v4, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    .line 392
    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 395
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    .line 397
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->changeNotificationShowingState(Z)V

    .line 399
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->setInCallUIStarted(Z)V

    .line 374
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    const-string/jumbo v1, "onStop()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->changeNotificationShowingState(Z)V

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 503
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 504
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 505
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    .line 506
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStop()V

    .line 508
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    if-eqz v1, :cond_1

    .line 509
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasAnyLiveCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 511
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->reset()V

    .line 513
    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isMoveTaskToBack:Z

    .line 490
    :cond_1
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDispatchTouchEventListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "mDispatchTouchEventListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    .line 1381
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 8
    .param p1, "exclude"    # Z

    .prologue
    .line 1252
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1253
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    .line 1254
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getTaskId()I

    move-result v4

    .line 1255
    .local v4, "taskId":I
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1257
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 1258
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v6, v4, :cond_0

    .line 1260
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1261
    :catch_0
    move-exception v1

    .line 1262
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "RuntimeException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1251
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "i":I
    .end local v3    # "task":Landroid/app/ActivityManager$AppTask;
    :cond_1
    return-void
.end method

.method public showAnswerFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1166
    const-string/jumbo v0, "tag_answer_fragment"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1165
    return-void
.end method

.method public showCallCardFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1147
    const-string/jumbo v0, "tag_callcard_fragment"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1146
    return-void
.end method

.method public showConferenceFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1157
    const-string/jumbo v0, "tag_conference_manager_fragment"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1158
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceManagerFragment;->onVisibilityChanged(Z)V

    .line 1162
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    return-void

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialpadFragment(ZZ)Z
    .locals 6
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1090
    sget-object v1, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialpad : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isSlideOuting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->isSlideOuting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    if-nez p1, :cond_6

    .line 1092
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isSlideOuting:Z

    if-eqz v1, :cond_0

    .line 1093
    return v4

    .line 1095
    :cond_0
    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->isSlideOuting:Z

    .line 1102
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1107
    :cond_2
    if-eqz p1, :cond_3

    .line 1108
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    iget-boolean v1, v1, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-eqz v1, :cond_8

    .line 1113
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v1, p1, v5}, Lcom/android/incallui/OPCallCardFragment;->whenShowDialpad(ZZ)V

    .line 1118
    if-nez p2, :cond_9

    .line 1119
    if-nez p1, :cond_4

    .line 1120
    const-string/jumbo v1, "tag_dialpad_fragment"

    invoke-direct {p0, v1, p1, v5}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1135
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 1136
    .local v0, "sensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_5

    .line 1139
    :cond_5
    return v5

    .line 1098
    .end local v0    # "sensor":Lcom/android/incallui/ProximitySensor;
    :cond_6
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->isSlideOuting:Z

    goto :goto_0

    .line 1103
    :cond_7
    return v4

    .line 1109
    :cond_8
    sget-object v1, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "return"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return v4

    .line 1127
    :cond_9
    if-nez p1, :cond_4

    .line 1128
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/OPDialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public showInCallScreen()V
    .locals 2

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    return-void
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1170
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    .local v0, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    .line 1175
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    .line 1176
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    .line 1169
    .end local v0    # "fragment":Lcom/android/incallui/PostCharDialogFragment;
    :goto_0
    return-void

    .line 1178
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    .line 1179
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    .line 1180
    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    goto :goto_0
.end method

.method public startDialpadFragmentAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1820
    sget-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDialpadFragmentAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1822
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPDialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1819
    :cond_0
    return-void
.end method

.method public startInCallRecorder()V
    .locals 1

    .prologue
    .line 1432
    const-string/jumbo v0, "start_call_record"

    invoke-static {p0, v0}, Lcom/android/incallui/InCallActivity;->callBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1431
    return-void
.end method

.method public stopInCallRecorder()V
    .locals 1

    .prologue
    .line 1436
    const-string/jumbo v0, "stop_call_record"

    invoke-static {p0, v0}, Lcom/android/incallui/InCallActivity;->callBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1435
    return-void
.end method

.method public updateDsdaTab()V
    .locals 5

    .prologue
    .line 1289
    sget v2, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    .line 1290
    .local v2, "phoneCount":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1292
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1293
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v3

    .line 1294
    .local v3, "subId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1295
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    .line 1294
    if-eqz v4, :cond_1

    .line 1296
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_0

    .line 1297
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->addDsdaTab(I)V

    .line 1292
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1300
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->removeDsdaTab(I)V

    goto :goto_1

    .line 1304
    .end local v3    # "subId":I
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDsdaTabSelection()V

    .line 1288
    return-void
.end method
