.class public Lcom/android/contacts/common/MoreContactUtils;
.super Ljava/lang/Object;
.source "MoreContactUtils.java"


# static fields
.field private static final synthetic -com-google-i18n-phonenumbers-PhoneNumberUtil$MatchTypeSwitchesValues:[I = null

.field private static final ADN_COUNT_POS:I = 0x0

.field private static final ADN_USED_POS:I = 0x1

.field private static final ANR_COUNT_POS:I = 0x4

.field private static final ANR_POS:I = 0x3

.field private static final ANR_USED_POS:I = 0x5

.field private static final DBG:Z = true

.field private static final EMAIL_COUNT_POS:I = 0x2

.field private static final EMAIL_POS:I = 0x2

.field private static final EMAIL_USED_POS:I = 0x3

.field public static final IC_SIM_PICTURE:[I

.field public static final MAX_LENGTH_EMAIL_IN_SIM:I = 0x28

.field public static final MAX_LENGTH_NAME_IN_SIM:I = 0xe

.field public static final MAX_LENGTH_NAME_WITH_CHINESE_IN_SIM:I = 0x6

.field public static final MAX_LENGTH_NUMBER_IN_SIM:I = 0x28

.field private static final NAME_COUNT_POS:I = 0x6

.field private static final NAME_POS:I = 0x0

.field private static final NUMBER_POS:I = 0x1

.field public static final PREFERRED_SIM_ICON_INDEX:Ljava/lang/String; = "preferred_sim_icon_index"

.field private static final TAG:Ljava/lang/String; = "MoreContactUtils"

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-google-i18n-phonenumbers-PhoneNumberUtil$MatchTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/common/MoreContactUtils;->-com-google-i18n-phonenumbers-PhoneNumberUtil$MatchTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/MoreContactUtils;->-com-google-i18n-phonenumbers-PhoneNumberUtil$MatchTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/contacts/common/MoreContactUtils;->-com-google-i18n-phonenumbers-PhoneNumberUtil$MatchTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/MoreContactUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    .line 86
    const v0, 0x7f0200dc

    .line 87
    const v1, 0x7f0200dd

    .line 88
    const v2, 0x7f0200df

    .line 89
    const v3, 0x7f0200de

    .line 90
    const v4, 0x7f0200e0

    .line 85
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/MoreContactUtils;->IC_SIM_PICTURE:[I

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSaveAnr(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 421
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getAnrCount(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 422
    .local v0, "canSaveAnr":Z
    :goto_0
    const-string/jumbo v1, "MoreContactUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canSaveAnr("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v0

    .line 421
    .end local v0    # "canSaveAnr":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canSaveAnr":Z
    goto :goto_0
.end method

.method public static canSaveEmail(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 430
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getEmailCount(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 431
    .local v0, "canSaveEmail":Z
    :goto_0
    const-string/jumbo v1, "MoreContactUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canSaveEmail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v0

    .line 430
    .end local v0    # "canSaveEmail":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canSaveEmail":Z
    goto :goto_0
.end method

.method public static createHeaderView(Landroid/content/Context;I)Landroid/widget/TextView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textResourceId"    # I

    .prologue
    .line 292
    const v1, 0x7f040067

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-object v0
.end method

.method public static getAcount(Landroid/content/Context;I)Landroid/accounts/Account;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    const/4 v3, 0x1

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, "account":Landroid/accounts/Account;
    const-string/jumbo v2, "phone"

    .line 461
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 463
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 464
    if-nez p1, :cond_2

    .line 465
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    const-string/jumbo v2, "SIM1"

    .line 466
    const-string/jumbo v3, "com.android.sim"

    .line 465
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 478
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v2, "PHONE"

    .line 479
    const-string/jumbo v3, "com.android.localphone"

    .line 478
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    return-object v0

    .line 467
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_2
    if-ne p1, v3, :cond_0

    .line 468
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    const-string/jumbo v2, "SIM2"

    .line 469
    const-string/jumbo v3, "com.android.sim"

    .line 468
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "account":Landroid/accounts/Account;
    goto :goto_0

    .line 472
    .local v0, "account":Landroid/accounts/Account;
    :cond_3
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    const-string/jumbo v2, "SIM"

    .line 474
    const-string/jumbo v3, "com.android.sim"

    .line 473
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "account":Landroid/accounts/Account;
    goto :goto_0
.end method

.method public static getActiveSlotId(Landroid/content/Context;I)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 562
    const/4 v2, 0x0

    .line 564
    .local v2, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 565
    .local v1, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 569
    .end local v1    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    return v3

    .line 571
    :cond_0
    const/4 v3, -0x1

    return v3

    .line 566
    .restart local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getActiveSubId(Landroid/content/Context;I)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 549
    const/4 v2, 0x0

    .line 551
    .local v2, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 552
    .local v1, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 556
    .end local v1    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 557
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3

    .line 553
    .restart local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public static getAdnAlphaTagMaxLength(Landroid/content/Context;I)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slotID"    # I

    .prologue
    .line 890
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getActiveSubId(Landroid/content/Context;I)I

    move-result v3

    .line 892
    .local v3, "subId":I
    :try_start_0
    invoke-static {v3}, Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v2

    .line 894
    .local v2, "nameLength":[I
    if-eqz v2, :cond_0

    .line 895
    const/4 v4, 0x6

    aget v1, v2, v4

    .line 896
    .local v1, "maxLen":I
    const-string/jumbo v4, "MoreContactUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAdnAlphaTagMaxLength() - maxLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    return v1

    .line 899
    .end local v1    # "maxLen":I
    .end local v2    # "nameLength":[I
    :catch_0
    move-exception v0

    .line 901
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 903
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public static getAdnAlphaTagMaxLength(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 878
    const-string/jumbo v0, "SIM1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-static {p0, v1}, Lcom/android/contacts/common/MoreContactUtils;->getAdnAlphaTagMaxLength(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 880
    :cond_0
    const-string/jumbo v0, "SIM2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/contacts/common/MoreContactUtils;->getAdnAlphaTagMaxLength(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 882
    :cond_1
    const-string/jumbo v0, "SIM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    invoke-static {p0, v1}, Lcom/android/contacts/common/MoreContactUtils;->getAdnAlphaTagMaxLength(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 885
    :cond_2
    return v1
.end method

.method public static getAdnCount(Landroid/content/Context;I)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    const/4 v6, 0x0

    .line 386
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getActiveSubId(Landroid/content/Context;I)I

    move-result v2

    .line 388
    .local v2, "subId":I
    :try_start_0
    invoke-static {v2}, Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    .line 390
    .local v0, "adnCount":[I
    if-eqz v0, :cond_0

    .line 391
    const-string/jumbo v3, "MoreContactUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAdnCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") - adnCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    const/4 v5, 0x2

    aget v5, v0, v5

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x0

    aget v3, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 395
    .end local v0    # "adnCount":[I
    :catch_0
    move-exception v1

    .line 396
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "MoreContactUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    return v6
.end method

.method public static getAnrCount(Landroid/content/Context;I)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 368
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getActiveSubId(Landroid/content/Context;I)I

    move-result v2

    .line 370
    .local v2, "subId":I
    :try_start_0
    invoke-static {v2}, Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    .line 372
    .local v0, "anrCount":[I
    if-eqz v0, :cond_0

    .line 373
    const-string/jumbo v3, "MoreContactUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAnrCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") - anrCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 374
    const/4 v5, 0x2

    aget v5, v0, v5

    .line 373
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v3, 0x4

    aget v3, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 377
    .end local v0    # "anrCount":[I
    :catch_0
    move-exception v1

    .line 378
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "MoreContactUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static getCurrentSimIconIndex(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const/4 v5, -0x1

    .line 838
    const-string/jumbo v3, "phone"

    .line 837
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 839
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 841
    :cond_0
    return v5

    .line 840
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 844
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 845
    const-string/jumbo v4, "preferred_sim_icon_index"

    .line 844
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "simIconIndex":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 847
    return p1

    .line 849
    :cond_2
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "indexs":[Ljava/lang/String;
    array-length v3, v0

    if-lt p1, v3, :cond_3

    .line 851
    return v5

    .line 853
    :cond_3
    aget-object v3, v0, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getEmailCount(Landroid/content/Context;I)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 403
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getActiveSubId(Landroid/content/Context;I)I

    move-result v2

    .line 405
    .local v2, "subId":I
    :try_start_0
    invoke-static {v2}, Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    .line 407
    .local v0, "emailCount":[I
    if-eqz v0, :cond_0

    .line 408
    const-string/jumbo v3, "MoreContactUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEmailCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") - emailCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 409
    const/4 v5, 0x2

    aget v5, v0, v5

    .line 408
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v3, 0x2

    aget v3, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 412
    .end local v0    # "emailCount":[I
    :catch_0
    move-exception v1

    .line 413
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "MoreContactUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p0, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 324
    .local v2, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "className":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 328
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v3, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    return-object v1
.end method

.method public static getLimitSimName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "maxLen"    # I

    .prologue
    const/4 v6, 0x0

    .line 736
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-gtz p1, :cond_1

    .line 737
    :cond_0
    return-object p0

    .line 739
    :cond_1
    const/4 v3, 0x0

    .line 740
    .local v3, "max80Length":I
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_2

    .line 741
    add-int/lit8 v5, p1, -0x2

    div-int/lit8 v3, v5, 0x2

    .line 745
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v3, :cond_3

    .line 746
    return-object p0

    .line 743
    :cond_2
    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v3, v5, 0x2

    goto :goto_0

    .line 748
    :cond_3
    const/4 v1, 0x0

    .line 749
    .local v1, "gmsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 750
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 751
    .local v4, "temp":C
    invoke-static {v4}, Lcom/android/contacts/common/OneplusGsmAlphabet;->UCStoGsm7(C)I

    move-result v0

    .line 752
    .local v0, "charCount":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 753
    invoke-static {p0, p1, v2, v1, v3}, Lcom/android/contacts/common/MoreContactUtils;->getTry81LimitSimName(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 755
    :cond_4
    add-int/2addr v1, v0

    .line 756
    if-le v1, p1, :cond_5

    .line 757
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 749
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 761
    .end local v0    # "charCount":I
    .end local v4    # "temp":C
    :cond_6
    return-object p0
.end method

.method public static getNetworkSpnName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 253
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 252
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 254
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v1, ""

    .line 255
    .local v1, "netSpnName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 262
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_0

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 264
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 265
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 266
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "netSpnName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 273
    .end local v0    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v1    # "netSpnName":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/android/contacts/common/MoreContactUtils;->toUpperCaseFirstOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 263
    .restart local v0    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v3    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOneSimAnrCount(Landroid/content/Context;I)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "count":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getAnrCount(Landroid/content/Context;I)I

    move-result v1

    .line 438
    .local v1, "anrCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getAdnCount(Landroid/content/Context;I)I

    move-result v0

    .line 439
    .local v0, "adnCount":I
    if-lez v0, :cond_0

    .line 440
    rem-int v3, v1, v0

    if-eqz v3, :cond_1

    div-int v3, v1, v0

    add-int/lit8 v2, v3, 0x1

    .line 443
    :cond_0
    :goto_0
    const-string/jumbo v3, "MoreContactUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOneSimAnrCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") - count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v2

    .line 441
    :cond_1
    div-int v2, v1, v0

    goto :goto_0
.end method

.method public static getOneSimEmailCount(Landroid/content/Context;I)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "count":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getEmailCount(Landroid/content/Context;I)I

    move-result v2

    .line 450
    .local v2, "emailCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getAdnCount(Landroid/content/Context;I)I

    move-result v0

    .line 451
    .local v0, "adnCount":I
    if-lez v0, :cond_0

    .line 452
    rem-int v3, v2, v0

    if-eqz v3, :cond_1

    div-int v3, v2, v0

    add-int/lit8 v1, v3, 0x1

    .line 455
    :cond_0
    :goto_0
    const-string/jumbo v3, "MoreContactUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOneSimEmailCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") - count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v1

    .line 453
    :cond_1
    div-int v1, v2, v0

    goto :goto_0
.end method

.method public static getSimAccountName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 343
    const-string/jumbo v1, "phone"

    .line 342
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 344
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 347
    :cond_0
    const-string/jumbo v1, "SIM"

    return-object v1
.end method

.method public static getSimFilter(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 860
    const-string/jumbo v4, "phone"

    .line 859
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 861
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 862
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    .local v2, "simFilter":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 865
    invoke-static {p0, v1}, Lcom/android/contacts/common/MoreContactUtils;->canSaveEmail(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 866
    invoke-static {p0, v1}, Lcom/android/contacts/common/MoreContactUtils;->getSimAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSimFreeCount(Landroid/content/Context;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 485
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getAcount(Landroid/content/Context;I)Landroid/accounts/Account;

    move-result-object v0

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 486
    .local v6, "accountName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 488
    .local v7, "count":I
    if-nez p0, :cond_0

    .line 489
    return v5

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 493
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 494
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 495
    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "account_name = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "deleted"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    const-string/jumbo v5, " = 0"

    .line 497
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 492
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 499
    .local v9, "queryCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 501
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 503
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getAdnCount(Landroid/content/Context;I)I

    move-result v0

    sub-int v8, v0, v7

    .line 507
    .local v8, "freeCount":I
    const-string/jumbo v0, "MoreContactUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimFreeCount("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") - freeCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v8

    .line 502
    .end local v8    # "freeCount":I
    :catchall_0
    move-exception v0

    .line 503
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 502
    throw v0
.end method

.method public static getSpareAnrCount(Landroid/content/Context;I)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 513
    const/4 v2, 0x0

    .line 514
    .local v2, "spareCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getActiveSubId(Landroid/content/Context;I)I

    move-result v3

    .line 516
    .local v3, "subId":I
    :try_start_0
    invoke-static {v3}, Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    .line 518
    .local v0, "anrCount":[I
    if-eqz v0, :cond_0

    .line 519
    const/4 v4, 0x4

    aget v4, v0, v4

    const/4 v5, 0x5

    aget v5, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v2, v4, v5

    .line 524
    .end local v0    # "anrCount":[I
    :cond_0
    :goto_0
    const-string/jumbo v4, "MoreContactUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSpareAnrCount("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return v2

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "MoreContactUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSpareEmailCount(Landroid/content/Context;I)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 531
    const/4 v2, 0x0

    .line 532
    .local v2, "spareCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/MoreContactUtils;->getActiveSubId(Landroid/content/Context;I)I

    move-result v3

    .line 534
    .local v3, "subId":I
    :try_start_0
    invoke-static {v3}, Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    .line 536
    .local v0, "emailCount":[I
    if-eqz v0, :cond_0

    .line 537
    const/4 v4, 0x2

    aget v4, v0, v4

    .line 538
    const/4 v5, 0x3

    aget v5, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    sub-int v2, v4, v5

    .line 543
    .end local v0    # "emailCount":[I
    :cond_0
    :goto_0
    const-string/jumbo v4, "MoreContactUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSpareEmailCount("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return v2

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "MoreContactUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSubscription(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v0, -0x1

    .line 353
    .local v0, "subscription":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 354
    :cond_0
    return v0

    .line 355
    :cond_1
    const-string/jumbo v1, "com.android.sim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    const-string/jumbo v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 357
    const-string/jumbo v1, "SIM1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 356
    if-eqz v1, :cond_4

    .line 358
    :cond_2
    const/4 v0, 0x0

    .line 363
    :cond_3
    :goto_0
    return v0

    .line 359
    :cond_4
    const-string/jumbo v1, "SIM2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getTargetRectFromView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 234
    .local v0, "pos":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 236
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 237
    .local v1, "rect":Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 238
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 239
    aget v2, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 240
    aget v2, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 241
    return-object v1
.end method

.method private static getTry81LimitSimName(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 18
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "maxLen"    # I
    .param p2, "start"    # I
    .param p3, "gmsCount"    # I
    .param p4, "max80Length"    # I

    .prologue
    .line 765
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 766
    .local v7, "temp":C
    const v2, 0x8000

    and-int/2addr v2, v7

    const v3, 0x8000

    if-ne v2, v3, :cond_0

    .line 767
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move v8, v7

    move/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/contacts/common/MoreContactUtils;->getTry82LimitSimName(Ljava/lang/String;IIIICCI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 769
    :cond_0
    const/4 v12, 0x1

    .line 770
    .local v12, "count81":I
    add-int/lit8 v2, p3, 0x3

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    if-le v2, v0, :cond_1

    .line 771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 773
    :cond_1
    and-int/lit16 v0, v7, 0x7f80

    move/from16 v16, v0

    .line 774
    .local v16, "base81":I
    move v13, v7

    .line 775
    .local v13, "min":C
    move v14, v7

    .line 776
    .local v14, "max":C
    add-int/lit8 v10, p2, 0x1

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_7

    .line 777
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 778
    invoke-static {v7}, Lcom/android/contacts/common/OneplusGsmAlphabet;->UCStoGsm7(C)I

    move-result v17

    .line 779
    .local v17, "charCount":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 780
    if-ge v7, v13, :cond_3

    .line 781
    move v13, v7

    .line 785
    :cond_2
    :goto_1
    const v2, 0xff80

    and-int/2addr v2, v7

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 786
    add-int/lit8 v12, v12, 0x1

    .line 793
    :goto_2
    add-int/lit8 v2, p3, 0x3

    add-int/2addr v2, v12

    move/from16 v0, p1

    if-le v2, v0, :cond_6

    .line 794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 782
    :cond_3
    if-le v7, v14, :cond_2

    .line 783
    move v14, v7

    goto :goto_1

    :cond_4
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v11, p3

    move/from16 v15, p4

    .line 788
    invoke-static/range {v8 .. v15}, Lcom/android/contacts/common/MoreContactUtils;->getTry82LimitSimName(Ljava/lang/String;IIIICCI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 791
    :cond_5
    add-int p3, p3, v17

    goto :goto_2

    .line 776
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 797
    .end local v17    # "charCount":I
    :cond_7
    return-object p0
.end method

.method private static getTry82LimitSimName(Ljava/lang/String;IIIICCI)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "maxLen"    # I
    .param p2, "start"    # I
    .param p3, "gmsCount"    # I
    .param p4, "count81"    # I
    .param p5, "min"    # C
    .param p6, "max"    # C
    .param p7, "max80Length"    # I

    .prologue
    const/16 v6, 0x7f

    const/4 v5, 0x0

    .line 802
    sub-int v4, p6, p5

    if-le v4, v6, :cond_1

    .line 803
    if-le p2, p7, :cond_0

    .end local p2    # "start":I
    :goto_0
    invoke-virtual {p0, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .restart local p2    # "start":I
    :cond_0
    move p2, p7

    goto :goto_0

    .line 805
    :cond_1
    move v1, p4

    .line 806
    .local v1, "count82":I
    add-int/lit8 v4, p3, 0x4

    add-int/2addr v4, p4

    if-le v4, p1, :cond_2

    .line 807
    invoke-virtual {p0, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 809
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 810
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 811
    .local v3, "temp":C
    invoke-static {v3}, Lcom/android/contacts/common/OneplusGsmAlphabet;->UCStoGsm7(C)I

    move-result v0

    .line 812
    .local v0, "charCount":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_7

    .line 813
    if-ge v3, p5, :cond_4

    .line 814
    move p5, v3

    .line 818
    :cond_3
    :goto_2
    sub-int v4, p6, p5

    if-le v4, v6, :cond_6

    .line 819
    if-le p2, p7, :cond_5

    .end local p2    # "start":I
    :goto_3
    invoke-virtual {p0, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 815
    .restart local p2    # "start":I
    :cond_4
    if-le v3, p6, :cond_3

    .line 816
    move p6, v3

    goto :goto_2

    :cond_5
    move p2, p7

    .line 819
    goto :goto_3

    .line 821
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 826
    :goto_4
    add-int/lit8 v4, p3, 0x4

    add-int/2addr v4, v1

    if-le v4, p1, :cond_8

    .line 827
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 824
    :cond_7
    add-int/2addr p3, v0

    goto :goto_4

    .line 809
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 830
    .end local v0    # "charCount":I
    .end local v3    # "temp":C
    :cond_9
    return-object p0
.end method

.method public static insertToCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # Ljava/lang/String;
    .param p4, "anrNumber"    # Ljava/lang/String;
    .param p5, "subscription"    # I

    .prologue
    .line 679
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/common/MoreContactUtils;->insertToCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static insertToCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # Ljava/lang/String;
    .param p4, "anrNumber"    # Ljava/lang/String;
    .param p5, "subscription"    # I
    .param p6, "insertToPhone"    # Z

    .prologue
    const/16 v6, 0x28

    const/4 v7, 0x0

    .line 686
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 687
    .local v1, "mValues":Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 690
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 691
    invoke-static {p0, p5}, Lcom/android/contacts/common/MoreContactUtils;->getAdnAlphaTagMaxLength(Landroid/content/Context;I)I

    move-result v2

    .line 692
    .local v2, "maxLen":I
    invoke-static {p1, v2}, Lcom/android/contacts/common/MoreContactUtils;->getLimitSimName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 693
    const-string/jumbo v5, "tag"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v2    # "maxLen":I
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 698
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 699
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 700
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 703
    :cond_1
    const-string/jumbo v5, "number"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 707
    const-string/jumbo v5, "emails"

    invoke-virtual {v1, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 711
    const-string/jumbo v5, "[^0123456789PWN\\,\\;\\*\\#\\+\\:]"

    const-string/jumbo v6, ""

    invoke-virtual {p4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 712
    const-string/jumbo v5, "anrs"

    invoke-virtual {v1, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_4
    new-instance v0, Lcom/android/contacts/common/SimContactsOperation;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/SimContactsOperation;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, "mSimContactsOperation":Lcom/android/contacts/common/SimContactsOperation;
    invoke-virtual {v0, v1, p5}, Lcom/android/contacts/common/SimContactsOperation;->insert(Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v3

    .line 718
    .local v3, "result":Landroid/net/Uri;
    if-eqz v3, :cond_6

    .line 719
    if-eqz p6, :cond_5

    .line 722
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    .line 723
    .local v4, "value":[Ljava/lang/String;
    invoke-static {v4, p0, p5}, Lcom/android/contacts/common/MoreContactUtils;->insertToPhone([Ljava/lang/String;Landroid/content/Context;I)Z

    .line 729
    .end local v4    # "value":[Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v3

    .line 726
    :cond_6
    const-string/jumbo v5, "MoreContactUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "export contact: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] to slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 727
    const-string/jumbo v7, " failed"

    .line 726
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertToPhone([Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 24
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    .line 575
    invoke-static/range {p1 .. p2}, Lcom/android/contacts/common/MoreContactUtils;->getAcount(Landroid/content/Context;I)Landroid/accounts/Account;

    move-result-object v2

    .line 576
    .local v2, "account":Landroid/accounts/Account;
    const/16 v19, 0x0

    aget-object v13, p0, v19

    .line 577
    .local v13, "name":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v15, p0, v19

    .line 578
    .local v15, "phoneNumber":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v12, p0, v19

    .line 579
    .local v12, "emailAddresses":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v5, p0, v19

    .line 583
    .local v5, "anrs":Ljava/lang/String;
    const/16 v18, 0x1

    .line 584
    .local v18, "success":Z
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 585
    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 589
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 590
    const-string/jumbo v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 595
    :goto_1
    const-string/jumbo v19, "MoreContactUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "insertToPhone: name= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", phoneNumber= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 596
    const-string/jumbo v21, ", emails= "

    .line 595
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 596
    const-string/jumbo v21, ", anrs= "

    .line 595
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 596
    const-string/jumbo v21, ", account= "

    .line 595
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v14, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v19, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 600
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 602
    .local v6, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v19, "aggregation_mode"

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 604
    if-eqz v2, :cond_0

    .line 605
    const-string/jumbo v19, "account_name"

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 606
    const-string/jumbo v19, "account_type"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 608
    :cond_0
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 612
    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 613
    const-string/jumbo v19, "raw_contact_id"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 614
    const-string/jumbo v19, "mimetype"

    const-string/jumbo v20, "vnd.android.cursor.item/name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 615
    const-string/jumbo v19, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 616
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 620
    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 621
    const-string/jumbo v19, "raw_contact_id"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 622
    const-string/jumbo v19, "mimetype"

    const-string/jumbo v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 623
    const-string/jumbo v19, "data2"

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 624
    const-string/jumbo v19, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 625
    const-string/jumbo v19, "is_primary"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 626
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_2
    if-eqz v4, :cond_6

    .line 630
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v3, v4, v19

    .line 631
    .local v3, "anr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 632
    sget-object v21, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 633
    const-string/jumbo v21, "raw_contact_id"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 634
    const-string/jumbo v21, "mimetype"

    const-string/jumbo v22, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 635
    const-string/jumbo v21, "data2"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 636
    const-string/jumbo v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 637
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 587
    .end local v3    # "anr":Ljava/lang/String;
    .end local v6    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v14    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    const/4 v11, 0x0

    .local v11, "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 592
    .end local v11    # "emailAddressArray":[Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .local v4, "anrArray":[Ljava/lang/String;
    goto/16 :goto_1

    .line 642
    .end local v4    # "anrArray":[Ljava/lang/String;
    .restart local v6    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v14    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    if-eqz v11, :cond_8

    .line 643
    const/16 v19, 0x0

    array-length v0, v11

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v10, v11, v19

    .line 644
    .local v10, "emailAddress":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 645
    sget-object v21, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 646
    const-string/jumbo v21, "raw_contact_id"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 647
    const-string/jumbo v21, "mimetype"

    const-string/jumbo v22, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 648
    const-string/jumbo v21, "data2"

    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 649
    const-string/jumbo v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 650
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 657
    .end local v10    # "emailAddress":Ljava/lang/String;
    :cond_8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "com.android.contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v17

    .line 658
    .local v17, "results":[Landroid/content/ContentProviderResult;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v16, v17, v19

    .line 659
    .local v16, "result":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v21, :cond_a

    .line 660
    const/16 v18, 0x0

    .line 664
    .end local v16    # "result":Landroid/content/ContentProviderResult;
    :cond_9
    return v18

    .line 658
    .restart local v16    # "result":Landroid/content/ContentProviderResult;
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 671
    .end local v16    # "result":Landroid/content/ContentProviderResult;
    .end local v17    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v8

    .line 672
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v19, "MoreContactUtils"

    const-string/jumbo v20, "%s: %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v19, 0x0

    return v19

    .line 668
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 669
    .local v7, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v19, "MoreContactUtils"

    const-string/jumbo v20, "%s: %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual {v7}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-virtual {v7}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/16 v19, 0x0

    return v19

    .line 665
    .end local v7    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v9

    .line 666
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "MoreContactUtils"

    const-string/jumbo v20, "%s: %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/16 v19, 0x0

    return v19
.end method

.method public static setHeaderViewBottomPadding(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isFirstRow"    # Z

    .prologue
    .line 304
    if-eqz p2, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 306
    const v2, 0x7f0b01c7

    .line 305
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 311
    .local v0, "topPadding":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    .line 312
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 311
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 302
    return-void

    .line 308
    .end local v0    # "topPadding":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 309
    const v2, 0x7f0b01c8

    .line 308
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .restart local v0    # "topPadding":I
    goto :goto_0
.end method

.method public static shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "mimetype1"    # Ljava/lang/CharSequence;
    .param p1, "data1"    # Ljava/lang/CharSequence;
    .param p2, "mimetype2"    # Ljava/lang/CharSequence;
    .param p3, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 107
    :cond_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    return v1

    .line 111
    :cond_3
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    return v1

    .line 116
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 124
    const-string/jumbo v9, "#"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string/jumbo v10, "#"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v9, v10, :cond_0

    .line 125
    const-string/jumbo v9, "*"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string/jumbo v10, "*"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eq v9, v10, :cond_1

    .line 126
    :cond_0
    return v11

    .line 131
    :cond_1
    sget-object v9, Lcom/android/contacts/common/MoreContactUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "dataParts1":[Ljava/lang/String;
    sget-object v9, Lcom/android/contacts/common/MoreContactUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "dataParts2":[Ljava/lang/String;
    array-length v9, v2

    array-length v10, v3

    if-eq v9, v10, :cond_2

    return v11

    .line 134
    :cond_2
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v8

    .line 135
    .local v8, "util":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v2

    if-ge v6, v9, :cond_6

    .line 138
    aget-object v9, v2, v6

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "dataPart1":Ljava/lang/String;
    aget-object v1, v3, v6

    .line 142
    .local v1, "dataPart2":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 135
    :cond_3
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v8, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v7

    .line 146
    .local v7, "result":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    invoke-static {}, Lcom/android/contacts/common/MoreContactUtils;->-getcom-google-i18n-phonenumbers-PhoneNumberUtil$MatchTypeSwitchesValues()[I

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 219
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Unknown result value from phone number library"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 149
    :pswitch_1
    return v11

    .line 151
    :pswitch_2
    return v11

    .line 158
    :pswitch_3
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v8, v0, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_3

    .line 194
    return v11

    .line 198
    :catch_0
    move-exception v4

    .line 209
    .local v4, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v8, v1, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .end local v4    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :cond_5
    return v11

    .line 210
    .restart local v4    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :catch_1
    move-exception v5

    .local v5, "e2":Lcom/google/i18n/phonenumbers/NumberParseException;
    goto :goto_1

    .line 217
    .end local v4    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    .end local v5    # "e2":Lcom/google/i18n/phonenumbers/NumberParseException;
    :pswitch_4
    return v11

    .line 223
    .end local v0    # "dataPart1":Ljava/lang/String;
    .end local v1    # "dataPart2":Ljava/lang/String;
    .end local v7    # "result":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :cond_6
    return v12

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static shouldShowOperator(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static toUpperCaseFirstOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    return-object p0

    .line 280
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    return-object p0

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
