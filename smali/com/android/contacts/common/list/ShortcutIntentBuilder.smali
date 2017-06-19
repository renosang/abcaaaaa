.class public Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;
    }
.end annotation


# static fields
.field private static final CONTACT_ACCOUNT_NAME_COLUMN_INDEX:I = 0x4

.field private static final CONTACT_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x3

.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final CONTACT_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x2

.field private static final CONTACT_PHONEBOOK_LABEL:I = 0x5

.field private static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x1

.field public static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field public static final PHONEBOOK_LABEL_PRIMARY:Ljava/lang/String; = "phonebook_label"

.field private static final PHONE_ACCOUNT_NAME_COLUMN_INDEX:I = 0x7

.field private static final PHONE_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x6

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final PHONE_LABEL_COLUMN_INDEX:I = 0x4

.field private static final PHONE_LOOKUP_KEY_COLUMN_INDEX:I = 0x5

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PHONE_PHONEBOOK_LABEL_INDEX:I = 0x8

.field private static final PHONE_PHOTO_ID_COLUMN_INDEX:I = 0x1

.field private static final PHONE_TYPE_COLUMN_INDEX:I = 0x3

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_PHOTO_COLUMN_INDEX:I = 0x0

.field private static final PHOTO_SELECTION:Ljava/lang/String; = "_id=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

.field private final mOverlayTextBackgroundColor:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "phonebookLabel"    # Ljava/lang/String;
    .param p7, "bitmapData"    # [B

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "phonebookLabel"    # Ljava/lang/String;
    .param p5, "bitmapData"    # [B
    .param p6, "phoneNumber"    # Ljava/lang/String;
    .param p7, "phoneType"    # I
    .param p8, "phoneLabel"    # Ljava/lang/String;
    .param p9, "account"    # Landroid/accounts/Account;
    .param p10, "shortcutAction"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p10}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    .line 62
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v4

    .line 63
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v5

    .line 64
    const-string/jumbo v1, "account_type"

    aput-object v1, v0, v6

    .line 65
    const-string/jumbo v1, "account_name"

    aput-object v1, v0, v7

    .line 66
    const-string/jumbo v1, "phonebook_label"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    .line 78
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v4

    .line 79
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v5

    .line 80
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v6

    .line 81
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v7

    .line 82
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 76
    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "data15"

    aput-object v1, v0, v3

    .line 98
    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    .line 143
    const-string/jumbo v1, "activity"

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 144
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 145
    iget v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 148
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    .line 149
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mOverlayTextBackgroundColor:I

    .line 137
    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "phonebookLabel"    # Ljava/lang/String;
    .param p7, "bitmapData"    # [B

    .prologue
    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p4

    .line 305
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 310
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v9, "shortcutIntent":Landroid/content/Intent;
    const v0, 0x10018000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string/jumbo v0, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    invoke-virtual {v9, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v1, "android.provider.extra.EXCLUDE_MIMES"

    .line 326
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 325
    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-direct {p0, v6}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 330
    .local v7, "icon":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 335
    const v2, 0x7f0d0129

    .line 334
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v0, p1, v8}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 304
    return-void

    .line 337
    :cond_0
    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "phonebookLabel"    # Ljava/lang/String;
    .param p5, "bitmapData"    # [B
    .param p6, "phoneNumber"    # Ljava/lang/String;
    .param p7, "phoneType"    # I
    .param p8, "phoneLabel"    # Ljava/lang/String;
    .param p9, "account"    # Landroid/accounts/Account;
    .param p10, "shortcutAction"    # Ljava/lang/String;

    .prologue
    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p9

    .line 346
    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 350
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v2, "android.intent.action.CALL"

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 354
    .local v11, "phoneUri":Landroid/net/Uri;
    const v2, 0x7f0200cb

    .line 353
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 361
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p10

    invoke-direct {v12, v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    .local v12, "shortcutIntent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    const-string/jumbo v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v10, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 371
    :cond_0
    const-string/jumbo v2, "android.intent.action.CALL"

    move-object/from16 v0, p10

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    .line 373
    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const v5, 0x7f0d0101

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v2, p1, v10}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 345
    return-void

    .line 356
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "phoneUri":Landroid/net/Uri;
    .end local v12    # "shortcutIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "smsto"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 358
    .restart local v11    # "phoneUri":Landroid/net/Uri;
    const v2, 0x7f020110

    .line 357
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 374
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "shortcutIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v2, "android.intent.action.SENDTO"

    move-object/from16 v0, p10

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    .line 376
    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const v5, 0x7f0d0117

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p2, "phoneType"    # I
    .param p3, "phoneLabel"    # Ljava/lang/String;
    .param p4, "actionResId"    # I

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 414
    .local v17, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    .line 416
    .local v10, "density":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 419
    .local v15, "phoneIcon":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 420
    .local v13, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 424
    .local v16, "photoPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 425
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 426
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v11, v7, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 429
    .local v11, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 431
    .local v4, "overlay":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 432
    new-instance v9, Landroid/text/TextPaint;

    const/16 v5, 0x101

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    .line 433
    .local v9, "textPaint":Landroid/text/TextPaint;
    const v5, 0x7f0b01a9

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 434
    const v5, 0x7f0a0303

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 435
    const/4 v5, 0x0

    const v6, 0x7f0a0304

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v9, v7, v5, v8, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 437
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 451
    .local v12, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    const v5, 0x7f0b01aa

    .line 450
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    .line 454
    .local v19, "textPadding":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 455
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    .line 456
    .local v20, "textWidth":F
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    sub-float v5, v5, v20

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 457
    iget v8, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 456
    sub-int/2addr v5, v8

    sub-int v5, v5, v19

    int-to-float v8, v5

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 461
    .end local v9    # "textPaint":Landroid/text/TextPaint;
    .end local v12    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v19    # "textPadding":I
    .end local v20    # "textWidth":F
    :cond_0
    new-instance v18, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 462
    .local v18, "src":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 463
    .local v14, "iconWidth":I
    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v14, v5

    .line 464
    const/high16 v6, 0x41980000    # 19.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    .line 463
    const/4 v7, -0x1

    invoke-virtual {v11, v5, v7, v14, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v0, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 467
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    return-object v13
.end method

.method private generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 385
    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 389
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v2, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 390
    .local v2, "dst":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 391
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 395
    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {v5, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v4

    .line 396
    .local v4, "roundedDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 397
    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 398
    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 399
    .local v3, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    invoke-virtual {v4, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 401
    invoke-virtual {v4, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 404
    return-object v3
.end method

.method private getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmapData"    # [B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "phonebookLabel"    # Ljava/lang/String;
    .param p5, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 293
    if-eqz p1, :cond_0

    .line 294
    array-length v1, p1

    invoke-static {p1, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 297
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 299
    new-instance v2, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v2, p2, p3, p4, v3}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    invoke-static {v1, v3, v2}, Lcom/oneplus/contacts/common/ContactPhotoManager;->getDefaultLetterAvatarDrawableForContact(Landroid/content/Context;ZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 153
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method
