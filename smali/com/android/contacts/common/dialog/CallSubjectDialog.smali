.class public Lcom/android/contacts/common/dialog/CallSubjectDialog;
.super Landroid/app/Activity;
.source "CallSubjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/dialog/CallSubjectDialog$1;,
        Lcom/android/contacts/common/dialog/CallSubjectDialog$2;,
        Lcom/android/contacts/common/dialog/CallSubjectDialog$3;,
        Lcom/android/contacts/common/dialog/CallSubjectDialog$4;,
        Lcom/android/contacts/common/dialog/CallSubjectDialog$5;,
        Lcom/android/contacts/common/dialog/CallSubjectDialog$6;
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "CONTACT_URI"

.field public static final ARG_DISPLAY_NUMBER:Ljava/lang/String; = "DISPLAY_NUMBER"

.field public static final ARG_IS_BUSINESS:Ljava/lang/String; = "IS_BUSINESS"

.field public static final ARG_NAME_OR_NUMBER:Ljava/lang/String; = "NAME_OR_NUMBER"

.field public static final ARG_NUMBER:Ljava/lang/String; = "NUMBER"

.field public static final ARG_NUMBER_LABEL:Ljava/lang/String; = "NUMBER_LABEL"

.field public static final ARG_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "PHONE_ACCOUNT_HANDLE"

.field public static final ARG_PHOTO_ID:Ljava/lang/String; = "PHOTO_ID"

.field public static final ARG_PHOTO_URI:Ljava/lang/String; = "PHOTO_URI"

.field private static final CALL_SUBJECT_HISTORY_SIZE:I = 0x5

.field private static final CALL_SUBJECT_LIMIT:I = 0x10

.field public static final PREF_KEY_SUBJECT_HISTORY_COUNT:Ljava/lang/String; = "subject_history_count"

.field public static final PREF_KEY_SUBJECT_HISTORY_ITEM:Ljava/lang/String; = "subject_history_item"

.field private static final REQUEST_SUBJECT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "CallSubjectDialog"


# instance fields
.field private mAnimationDuration:I

.field private mBackgroundListener:Landroid/view/View$OnClickListener;

.field private mBackgroundView:Landroid/view/View;

.field private final mCallSubjectClickListener:Landroid/view/View$OnClickListener;

.field private mCallSubjectView:Landroid/widget/EditText;

.field private mCharacterLimitView:Landroid/widget/TextView;

.field private mContactPhoto:Landroid/widget/QuickContactBadge;

.field private mContactUri:Landroid/net/Uri;

.field private mDialogView:Landroid/view/View;

.field private mDisplayNumber:Ljava/lang/String;

.field private mHistoryButton:Landroid/view/View;

.field private final mHistoryOnClickListener:Landroid/view/View$OnClickListener;

.field private mIsBusiness:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLimit:I

.field private mMessageEncoding:Ljava/nio/charset/Charset;

.field private mNameOrNumber:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mNumberLabel:Ljava/lang/String;

.field private mNumberView:Landroid/widget/TextView;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhotoID:J

.field private mPhotoSize:I

.field private mPhotoUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSendAndCallButton:Landroid/view/View;

.field private final mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

.field private mSubjectHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjectList:Landroid/widget/ListView;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mAnimationDuration:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V
    .locals 0
    .param p1, "history"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->saveSubjectHistory(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->showCallHistory(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->updateCharacterLimit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    .line 118
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$1;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 138
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    .line 195
    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    return-void
.end method

.method private loadConfiguration()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 584
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 585
    .local v3, "sdk":I
    const/16 v6, 0x17

    if-gt v3, v6, :cond_0

    .line 586
    return-void

    .line 589
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v6, :cond_1

    .line 590
    return-void

    .line 594
    :cond_1
    const-string/jumbo v6, "telecom"

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    .line 595
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v6, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 597
    .local v0, "account":Landroid/telecom/PhoneAccount;
    invoke-static {v0}, Lcom/android/contacts/common/compat/PhoneAccountSdkCompat;->getExtras(Landroid/telecom/PhoneAccount;)Landroid/os/Bundle;

    move-result-object v2

    .line 598
    .local v2, "phoneAccountExtras":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 599
    return-void

    .line 604
    :cond_2
    const-string/jumbo v6, "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

    iget v7, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    .line 603
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    .line 608
    const-string/jumbo v6, "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

    .line 607
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "charsetName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 612
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v5

    .line 615
    .local v5, "uce":Ljava/nio/charset/UnsupportedCharsetException;
    const-string/jumbo v6, "CallSubjectDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid charset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iput-object v9, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 620
    .end local v5    # "uce":Ljava/nio/charset/UnsupportedCharsetException;
    :cond_3
    iput-object v9, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static loadSubjectHistory(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    const-string/jumbo v4, "subject_history_count"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 430
    .local v1, "historySize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    .local v3, "subjects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "ix":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subject_history_item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "historyItem":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "historyItem":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private readArguments()V
    .locals 4

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 340
    const-string/jumbo v1, "CallSubjectDialog"

    const-string/jumbo v2, "Arguments cannot be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 343
    :cond_0
    const-string/jumbo v1, "PHOTO_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoID:J

    .line 344
    const-string/jumbo v1, "PHOTO_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoUri:Landroid/net/Uri;

    .line 345
    const-string/jumbo v1, "CONTACT_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    .line 346
    const-string/jumbo v1, "NAME_OR_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    .line 347
    const-string/jumbo v1, "IS_BUSINESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mIsBusiness:Z

    .line 348
    const-string/jumbo v1, "NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;

    .line 349
    const-string/jumbo v1, "DISPLAY_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    .line 350
    const-string/jumbo v1, "NUMBER_LABEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    .line 351
    const-string/jumbo v1, "PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 337
    return-void
.end method

.method private saveSubjectHistory(Ljava/util/List;)V
    .locals 6
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
    .line 450
    .local p1, "history":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 451
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 455
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 456
    .local v1, "historyCount":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subject$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 457
    .local v2, "subject":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subject_history_item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    .end local v2    # "subject":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "subject_history_count"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 448
    return-void
.end method

.method private setPhoto(JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "photoId"    # J
    .param p3, "photoUri"    # Landroid/net/Uri;
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "isBusiness"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 392
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 393
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_0
    if-eqz p6, :cond_2

    .line 399
    const/4 v7, 0x2

    .line 404
    .local v7, "contactType":I
    :goto_0
    const/4 v8, 0x0

    .line 405
    .local v8, "lookupKey":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 406
    invoke-static {p4}, Lcom/android/contacts/common/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 410
    .end local v8    # "lookupKey":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v6, p5, v8, v7, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 413
    .local v6, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 414
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    .line 415
    iget v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoSize:I

    move-object v2, p3

    .line 414
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 391
    :goto_1
    return-void

    .line 401
    .end local v6    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .end local v7    # "contactType":I
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "contactType":I
    goto :goto_0

    .line 417
    .restart local v6    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_1
.end method

.method private showCallHistory(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 485
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 487
    :cond_0
    return-void

    .line 486
    :cond_1
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 490
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 491
    .local v1, "dialogStartingBottom":I
    if-eqz p1, :cond_3

    .line 493
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 494
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    const v4, 0x7f040036

    .line 493
    invoke-direct {v0, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 495
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 496
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 504
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 506
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;Landroid/view/ViewTreeObserver;IZ)V

    .line 505
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 483
    return-void

    .line 499
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "photoId"    # J
    .param p3, "photoUri"    # Landroid/net/Uri;
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "nameOrNumber"    # Ljava/lang/String;
    .param p6, "isBusiness"    # Z
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "displayNumber"    # Ljava/lang/String;
    .param p9, "numberLabel"    # Ljava/lang/String;
    .param p10, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "PHOTO_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    const-string/jumbo v1, "PHOTO_URI"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    const-string/jumbo v1, "CONTACT_URI"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    const-string/jumbo v1, "NAME_OR_NUMBER"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "IS_BUSINESS"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string/jumbo v1, "NUMBER"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "DISPLAY_NUMBER"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "NUMBER_LABEL"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    invoke-static {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 212
    const-wide/16 v2, -0x1

    .line 216
    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, p1

    move-object v8, p1

    move-object v9, v4

    move-object v10, v4

    move-object v11, v4

    .line 211
    invoke-static/range {v1 .. v11}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 210
    return-void
.end method

.method private updateCharacterLimit()V
    .locals 6

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "subjectText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .line 370
    .local v0, "length":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    .line 371
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7f0d01e5

    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    if-lt v0, v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 374
    const v4, 0x7f0a0319

    .line 373
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    :goto_1
    return-void

    .line 367
    .end local v0    # "length":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "length":I
    goto :goto_0

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 377
    const v4, 0x7f0a02ff

    .line 376
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private updateContactInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 319
    iget-wide v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoID:J

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mIsBusiness:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->setPhoto(JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_1
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 326
    const v2, 0x7f0d01e6

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 472
    const-string/jumbo v1, "input_method"

    .line 471
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 470
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c001f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mAnimationDuration:I

    .line 278
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    .line 279
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    const v4, 0x7f0b01ce

    .line 279
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoSize:I

    .line 281
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->readArguments()V

    .line 282
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->loadConfiguration()V

    .line 283
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->loadSubjectHistory(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    .line 285
    const v1, 0x7f040054

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->setContentView(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 288
    const v1, 0x7f0e0128

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    .line 289
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v1, 0x7f0e0129

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    .line 291
    const v1, 0x7f0e012a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    .line 292
    const v1, 0x7f0e00e8

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameView:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f0e012b

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    .line 294
    const v1, 0x7f0e012c

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    .line 295
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 298
    .local v0, "filters":[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 299
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 300
    const v1, 0x7f0e012d

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    .line 301
    const v1, 0x7f0e012e

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    .line 302
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v1, 0x7f0e012f

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallButton:Landroid/view/View;

    .line 305
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v1, 0x7f0e0130

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    .line 307
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 308
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 310
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->updateContactInfo()V

    .line 311
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->updateCharacterLimit()V

    .line 275
    return-void

    :cond_0
    move v1, v3

    .line 303
    goto :goto_0
.end method
