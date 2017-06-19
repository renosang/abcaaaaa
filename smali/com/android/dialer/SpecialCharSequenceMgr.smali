.class public Lcom/android/dialer/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;,
        Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;,
        Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final mEngineerCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEngineerCodes:[Ljava/lang/String;

.field private static sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;


# direct methods
.method static synthetic -set0(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .locals 0

    sput-object p0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    .locals 0
    .param p0, "handler"    # Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .param p1, "cookie"    # Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleAdnQuery(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    const/16 v0, 0x3d

    new-array v0, v0, [Ljava/lang/String;

    .line 241
    const-string/jumbo v1, "*#391#"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#3954391#"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "*#66#"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#99#"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 243
    const-string/jumbo v1, "*#008#"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#268#"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#789#"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 244
    const-string/jumbo v1, "*#800#"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#801#"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#802#"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#803#"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#804#"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#805#"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 245
    const-string/jumbo v1, "*#806#"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#807#"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#808#"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#809#"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#810#"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#811#"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 246
    const-string/jumbo v1, "*#820#"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#888#"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "*#814#"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#824#"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#834#"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#844#"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "*#900#"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#911#"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#912"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "*#1234#"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#6776#"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#4321#"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 250
    const-string/jumbo v1, "*#8011#"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8668#"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8669#"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8778#"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8888#"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "*#9886#"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#9889#"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "*##*8110#"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67766776#"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#2288379#"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "*#10000#"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#12345#"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "*##*37847#"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "*#36446337#"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8958378#"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#677667764482#"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "*#67760044#"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#6776001#"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#6776007#"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760052#"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "*#67760055#"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760066#"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760062#"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760084#"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "*#67760086#"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760886#"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#928#"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#818#"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#838#"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "*#8000#"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 240
    sput-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->mEngineerCodes:[Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->mEngineerCodes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 261
    sput-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->mEngineerCodeSet:Ljava/util/Set;

    .line 75
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 280
    const-string/jumbo v0, "SpecialCharSequenceMgr"

    const-string/jumbo v1, "cleanup() is called outside the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 286
    sput-object v2, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 278
    :cond_1
    return-void
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 322
    const-string/jumbo v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 323
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_0

    .line 324
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 325
    :cond_0
    const/4 v14, 0x0

    return v14

    .line 333
    :cond_1
    const-string/jumbo v14, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    .line 334
    .local v8, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 335
    const/4 v14, 0x0

    return v14

    .line 338
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 339
    .local v9, "len":I
    const/4 v14, 0x1

    if-le v9, v14, :cond_5

    const/4 v14, 0x5

    if-ge v9, v14, :cond_5

    const-string/jumbo v14, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 342
    add-int/lit8 v14, v9, -0x1

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 352
    .local v7, "index":I
    new-instance v5, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-direct {v5, v14}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 355
    .local v5, "handler":Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    new-instance v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v14, v7, -0x1

    .line 356
    const/4 v15, -0x1

    .line 355
    invoke-direct {v10, v14, v5, v15}, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 359
    .local v10, "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v14, v7, -0x1

    iput v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 360
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 363
    new-instance v14, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 364
    iget-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v15, 0x7f0d0285

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 365
    iget-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v15, 0x7f0d0284

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 367
    iget-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 368
    iget-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v14, v10}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 369
    iget-object v14, v10, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 370
    const/4 v15, 0x4

    .line 369
    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 373
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 374
    .local v11, "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 377
    .local v1, "applicationContext":Landroid/content/Context;
    const-string/jumbo v14, "tel"

    .line 376
    invoke-static {v1, v14}, Lcom/android/dialer/util/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v14

    .line 375
    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 379
    .local v6, "hasUserSelectedDefault":Z
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    if-eqz v6, :cond_4

    .line 380
    :cond_3
    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/android/dialer/util/TelecomUtil;->getAdnUriForPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v13

    .line 381
    .local v13, "uri":Landroid/net/Uri;
    invoke-static {v5, v10, v13}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleAdnQuery(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    .line 392
    .end local v13    # "uri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    const/4 v14, 0x1

    return v14

    .line 383
    .restart local p0    # "context":Landroid/content/Context;
    :cond_4
    new-instance v2, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;

    invoke-direct {v2, v1, v5, v10}, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;-><init>(Landroid/content/Context;Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;)V

    .line 386
    .local v2, "callback":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    invoke-static {v11, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v3

    .line 388
    .local v3, "dialogFragment":Landroid/app/DialogFragment;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v14

    .line 389
    const-string/jumbo v15, "tag_select_acct_fragment"

    .line 388
    invoke-virtual {v3, v14, v15}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local v2    # "callback":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .end local v3    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v5    # "handler":Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .end local v6    # "hasUserSelectedDefault":Z
    .end local v7    # "index":I
    .end local v10    # "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v11    # "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :catch_0
    move-exception v4

    .line 397
    :cond_5
    const/4 v14, 0x0

    return v14
.end method

.method private static handleAdnQuery(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    .locals 8
    .param p0, "handler"    # Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .param p1, "cookie"    # Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 402
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 403
    :cond_0
    const-string/jumbo v0, "SpecialCharSequenceMgr"

    const-string/jumbo v1, "queryAdn parameters incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 402
    :cond_1
    if-eqz p2, :cond_0

    .line 408
    iget-object v0, p1, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 411
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "number"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v0, :cond_2

    .line 416
    sget-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 418
    :cond_2
    sput-object p0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 401
    return-void
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x1

    .line 151
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "dialString":Ljava/lang/String;
    const-string/jumbo v1, "*#1234#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {p0}, Lcom/android/dialer/SpecialCharSequenceMgr;->showOneplusVersion(Landroid/content/Context;)V

    .line 158
    return v3

    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleEngineerChars(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const-string/jumbo v1, "SpecialCharSequenceMgr"

    const-string/jumbo v2, "handleEngineerTestCommands "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v3

    .line 172
    :cond_1
    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleDeviceIdDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handlePRLVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 172
    if-nez v1, :cond_2

    .line 174
    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 172
    if-nez v1, :cond_2

    .line 175
    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 172
    if-nez v1, :cond_2

    .line 176
    invoke-static {p0, v0, p2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    .line 172
    if-nez v1, :cond_2

    .line 177
    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 172
    if-eqz v1, :cond_3

    .line 178
    :cond_2
    return v3

    .line 181
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method static handleDeviceIdDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string/jumbo v11, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 452
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v10, :cond_7

    const-string/jumbo v11, "*#06#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 453
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 454
    const v7, 0x7f0d0282

    .line 456
    .local v7, "labelResId":I
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v4, "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->getPhoneCount(Landroid/telephony/TelephonyManager;)I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 458
    const-string/jumbo v11, "android.telephony.TelephonyManager"

    .line 459
    const-string/jumbo v12, "getDeviceId"

    .line 458
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    .line 459
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 458
    invoke-static {v11, v12, v13}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v11

    .line 457
    if-eqz v11, :cond_5

    .line 460
    const/4 v8, 0x0

    .local v8, "slot":I
    :goto_1
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    if-ge v8, v11, :cond_6

    .line 461
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "deviceId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 466
    .local v5, "enable14DigitImei":Z
    :try_start_0
    const-string/jumbo v11, "carrier_config"

    .line 465
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 467
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    .line 468
    .local v9, "subIds":[I
    if-eqz v2, :cond_0

    .line 469
    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v2, v11}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 471
    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v2, v11}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v11

    .line 472
    const-string/jumbo v12, "config_enable_display_14digit_imei"

    .line 471
    invoke-virtual {v11, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 478
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "enable14DigitImei":Z
    .end local v9    # "subIds":[I
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 482
    :cond_1
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 483
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 454
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v4    # "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "labelResId":I
    .end local v8    # "slot":I
    :cond_3
    const v7, 0x7f0d0283

    .restart local v7    # "labelResId":I
    goto :goto_0

    .line 474
    .restart local v3    # "deviceId":Ljava/lang/String;
    .restart local v4    # "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "enable14DigitImei":Z
    .restart local v8    # "slot":I
    :catch_0
    move-exception v6

    .line 476
    .local v6, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v11, "SpecialCharSequenceMgr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Config for 14 digit IMEI not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 479
    .end local v5    # "enable14DigitImei":Z
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xe

    if-le v11, v12, :cond_1

    .line 480
    const/4 v11, 0x0

    const/16 v12, 0xe

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 487
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v8    # "slot":I
    :cond_5
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_6
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 492
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    .line 490
    invoke-virtual {v12, v11, v13}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 493
    const v12, 0x104000a

    const/4 v13, 0x0

    .line 490
    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 494
    const/4 v12, 0x0

    .line 490
    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 496
    .local v1, "alert":Landroid/app/AlertDialog;
    const/4 v11, 0x1

    return v11

    .line 498
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v4    # "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "labelResId":I
    :cond_7
    const/4 v11, 0x0

    return v11
.end method

.method public static handleEngineerChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 211
    if-eqz p1, :cond_0

    const-string/jumbo v2, ""

    if-ne p1, v2, :cond_1

    .line 212
    :cond_0
    return v5

    .line 214
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, "nLength":I
    const-string/jumbo v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEngineerChars: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    const-string/jumbo v2, "*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    :cond_2
    return v5

    .line 222
    :cond_3
    sget-object v2, Lcom/android/dialer/SpecialCharSequenceMgr;->mEngineerCodeSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    const-string/jumbo v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast to EngineerModeTest input:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.oem.engineermode.EngineerModeMain"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "order"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    const/4 v2, 0x1

    return v2

    .line 235
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    return v5
.end method

.method private static handlePRLVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string/jumbo v2, "*#0000#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ENGINEER_MODE_DEVICEINFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v2, 0x1

    return v2

    .line 191
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SpecialCharSequenceMgr"

    const-string/jumbo v3, "no activity to handle showing device info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 422
    const-string/jumbo v4, "**04"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "**05"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const-string/jumbo v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 424
    invoke-static {p0}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 426
    .local v3, "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const-string/jumbo v4, "tel"

    invoke-static {p0, v4}, Lcom/android/dialer/util/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 425
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 428
    .local v1, "hasUserSelectedDefault":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    if-eqz v1, :cond_2

    .line 431
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Lcom/android/dialer/util/TelecomUtil;->handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    return v4

    .line 434
    :cond_2
    new-instance v2, Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    .local v2, "listener":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    invoke-static {v3, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v0

    .line 438
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 439
    const-string/jumbo v5, "tag_select_acct_fragment"

    .line 438
    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 441
    return v6

    .line 443
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v1    # "hasUserSelectedDefault":Z
    .end local v2    # "listener":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .end local v3    # "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private static handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string/jumbo v2, "*#07#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const-string/jumbo v2, "SpecialCharSequenceMgr"

    const-string/jumbo v3, "handleRegulatoryInfoDisplay() sending intent to settings app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, "showRegInfoIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "showRegInfoIntent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 302
    .local v1, "len":I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string/jumbo v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.Telephony.SECRET_CODE"

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x4

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 303
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    const/4 v2, 0x1

    return v2

    .line 309
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static showOneplusVersion(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 266
    .local v0, "ver":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "SoftwareVersion"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 267
    const v2, 0x104000a

    const/4 v3, 0x0

    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 268
    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 264
    return-void
.end method
