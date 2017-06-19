.class public Lcom/android/dialer/CallDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/CallDetailActivity$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountLabel:Landroid/widget/TextView;

.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mBlockNumberActionItem:Landroid/widget/TextView;

.field private mBlockedNumberId:Ljava/lang/Integer;

.field private mCallButton:Landroid/view/View;

.field private mCallLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

.field private mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mCopyNumberActionItem:Landroid/view/View;

.field private mDetails:Lcom/android/dialer/PhoneCallDetails;

.field private mDisplayNumber:Ljava/lang/String;

.field private mEditBeforeCallActionItem:Landroid/view/View;

.field private mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private mHistoryList:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mNumber:Ljava/lang/String;

.field private mPostDialDigits:Ljava/lang/String;

.field private mQuickContactBadge:Landroid/widget/QuickContactBadge;

.field private mReportActionItem:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mVoicemailUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/CallDetailActivity;)Landroid/text/BidiFormatter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mEditBeforeCallActionItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/dialer/CallDetailActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mReportActionItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/dialer/CallDetailActivity;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallTypeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/ContactInfoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/dialer/CallDetailActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCopyNumberActionItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/CallDetailActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mBlockedNumberId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/PhoneCallDetails;)Lcom/android/dialer/PhoneCallDetails;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mDisplayNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPostDialDigits:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getDialableNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/CallDetailActivity;I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->updateBlockActionItemVisibility(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateBlockActionItem()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateContactPhoto()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateFilteredNumberChanges()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/dialer/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$1;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .line 221
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 228
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPostDialDigits:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    return-void
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 346
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 348
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    aput-object v3, v5, v2

    return-object v5

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 351
    .local v0, "ids":[J
    if-nez v0, :cond_1

    .line 352
    .local v2, "numIds":I
    :goto_0
    new-array v4, v2, [Landroid/net/Uri;

    .line 353
    .local v4, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 355
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    aget-wide v6, v0, v1

    .line 354
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    .end local v1    # "index":I
    .end local v2    # "numIds":I
    .end local v4    # "uris":[Landroid/net/Uri;
    :cond_1
    array-length v2, v0

    goto :goto_0

    .line 357
    .restart local v1    # "index":I
    .restart local v2    # "numIds":I
    .restart local v4    # "uris":[Landroid/net/Uri;
    :cond_2
    return-object v4
.end method

.method private getDialableNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mPostDialDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateBlockActionItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockedNumberId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    .line 487
    const v1, 0x7f0200ce

    .line 486
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 483
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    const v1, 0x7f0d0212

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    .line 491
    const v1, 0x7f0200d2

    .line 490
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private updateBlockActionItemVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/compat/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/16 p1, 0x8

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    return-void
.end method

.method private updateContactPhoto()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 453
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v1, v1, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/PhoneNumberUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 459
    .local v9, "isVoicemailNumber":Z
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget v1, v1, Lcom/android/dialer/PhoneCallDetails;->sourceType:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->isBusiness(I)Z

    move-result v8

    .line 460
    .local v8, "isBusiness":Z
    const/4 v6, 0x1

    .line 461
    .local v6, "contactType":I
    if-eqz v9, :cond_2

    .line 462
    const/4 v6, 0x3

    .line 467
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v7, v0, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .line 469
    .local v7, "displayName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 470
    const/4 v10, 0x0

    .line 473
    :goto_2
    new-instance v5, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v5, v7, v10, v6, v4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 475
    .local v5, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v1, v1, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 476
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    .line 477
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v7, v2, v3

    const v11, 0x7f0d026e

    invoke-virtual {v1, v11, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v2, v2, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 452
    return-void

    .line 463
    .end local v5    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_1

    .line 464
    const/4 v6, 0x2

    goto :goto_0

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_1

    .line 470
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .local v10, "lookupKey":Ljava/lang/String;
    goto :goto_2
.end method

.method private updateFilteredNumberChanges()V
    .locals 5

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v2, v2, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 438
    new-instance v2, Lcom/android/dialer/CallDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/CallDetailActivity$3;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    .line 444
    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v4, v4, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 446
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateBlockActionItem()V

    .line 431
    :cond_0
    return-void

    .line 434
    .end local v0    # "success":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/interactions/TouchPointManager;->setPoint(II)V

    .line 329
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCallDetails()V
    .locals 2

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mCallLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-static {p0, v0, v1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->getCallDetails(Landroid/content/Context;[Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    .line 332
    return-void
.end method

.method public hasVoicemail()Z
    .locals 1
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeFilteredNumberUndo()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateFilteredNumberChanges()V

    .line 427
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 398
    .local v9, "resId":I
    const v0, 0x7f0e00d5

    if-ne v9, v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mBlockedNumberId:Ljava/lang/Integer;

    .line 401
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mDetails:Lcom/android/dialer/PhoneCallDetails;

    iget-object v3, v3, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mDisplayNumber:Ljava/lang/String;

    const v5, 0x7f0e00d3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 402
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v7, p0

    .line 399
    invoke-static/range {v0 .. v7}, Lcom/android/dialer/compat/FilteredNumberCompat;->showBlockNumberDialogFlow(Landroid/content/ContentResolver;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 396
    :goto_0
    return-void

    .line 403
    :cond_0
    const v0, 0x7f0e00d6

    if-ne v9, v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 405
    :cond_1
    const v0, 0x7f0e00d7

    if-ne v9, v0, :cond_2

    .line 406
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.DIAL"

    .line 407
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getDialableNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 406
    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 408
    .local v8, "dialIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 410
    .end local v8    # "dialIntent":Landroid/content/Intent;
    :cond_2
    sget-object v0, Lcom/android/dialer/CallDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected onClick event from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    iput-object p0, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 251
    new-instance v0, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 252
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 253
    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 255
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 254
    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 257
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    .line 259
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 261
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->setContentView(I)V

    .line 262
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 264
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;

    .line 265
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040030

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;

    .line 267
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04002f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 269
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    .line 270
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 274
    :cond_0
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerName:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;

    .line 277
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 279
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallButton:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/dialer/CallDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/CallDetailActivity$2;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    .line 295
    invoke-direct {p0, v4}, Lcom/android/dialer/CallDetailActivity;->updateBlockActionItemVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBlockNumberActionItem:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mEditBeforeCallActionItem:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mEditBeforeCallActionItem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mReportActionItem:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mReportActionItem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCopyNumberActionItem:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCopyNumberActionItem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_FROM_NOTIFICATION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->closeSystemDialogs()V

    .line 246
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 364
    const v1, 0x7f0e001d

    .line 366
    const v2, 0x7f0d0215

    .line 362
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 367
    .local v0, "deleteMenuItem":Landroid/view/MenuItem;
    const v1, 0x7f0200e3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 368
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 371
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onFilterNumberSuccess()V
    .locals 1

    .prologue
    .line 416
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 417
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateFilteredNumberChanges()V

    .line 415
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0e001d

    if-ne v3, v4, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mCallLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .line 378
    invoke-static {p0, v2, v3}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    .line 392
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "callIds":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 383
    .local v1, "callUri":Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_2
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 389
    .end local v1    # "callUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mCallLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .line 388
    invoke-static {p0, v2, v3}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteCalls(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 320
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getCallDetails()V

    .line 318
    return-void
.end method

.method public onUnfilterNumberSuccess()V
    .locals 1

    .prologue
    .line 422
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 423
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->updateFilteredNumberChanges()V

    .line 421
    return-void
.end method
