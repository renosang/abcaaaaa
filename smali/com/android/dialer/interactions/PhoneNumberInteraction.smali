.class public Lcom/android/dialer/interactions/PhoneNumberInteraction;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallInitiationType:I

.field private mContactId:J

.field private final mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mInteractionType:I

.field private mIsVideoCall:Z

.field private mLoader:Landroid/content/CursorLoader;

.field private mUseDefault:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "interactionType"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "callInitiationType"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;IZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-class v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    .line 260
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 261
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 263
    const-string/jumbo v1, "is_super_primary"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 266
    const-string/jumbo v1, "data2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 267
    const-string/jumbo v1, "data3"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 268
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 269
    const-string/jumbo v1, "contact_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 260
    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactionType"    # I
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    .line 310
    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;ZI)V

    .line 309
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactionType"    # I
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "isVideoCall"    # Z
    .param p5, "callInitiationType"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    .line 317
    iput-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    .line 318
    iput p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    .line 319
    iput-object p3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 320
    iput p5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallInitiationType:I

    .line 321
    iput-boolean p4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mIsVideoCall:Z

    .line 316
    return-void
.end method

.method private isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/dialer/TransactionSafeActivity;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/dialer/TransactionSafeActivity;

    invoke-virtual {v0}, Lcom/android/dialer/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    .line 456
    :goto_0
    return v0

    .line 457
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 460
    :cond_0
    return-void
.end method

.method private static performAction(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "interactionType"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "callInitiationType"    # I

    .prologue
    .line 333
    packed-switch p2, :pswitch_data_0

    .line 339
    new-instance v1, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    invoke-direct {v1, p1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 331
    return-void

    .line 335
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 336
    const-string/jumbo v1, "android.intent.action.SENDTO"

    const-string/jumbo v2, "sms"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 335
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private performAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-boolean v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mIsVideoCall:Z

    .line 326
    iget v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallInitiationType:I

    .line 325
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 324
    return-void
.end method

.method public static startInteractionForPhoneCall(Lcom/android/dialer/TransactionSafeActivity;Landroid/net/Uri;ZI)V
    .locals 6
    .param p0, "activity"    # Lcom/android/dialer/TransactionSafeActivity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isVideoCall"    # Z
    .param p3, "callInitiationType"    # I

    .prologue
    const/4 v2, 0x1

    .line 475
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;ZI)V

    invoke-virtual {v0, p1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;Z)V

    .line 474
    return-void
.end method


# virtual methods
.method getLoader()Landroid/content/CursorLoader;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v8, 0x1

    .line 400
    if-nez p2, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 402
    return-void

    .line 405
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    const/4 v2, 0x0

    .line 407
    .local v2, "primaryPhone":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->isSafeToCommitTransactions()Z

    move-result v3

    if-nez v3, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 409
    return-void

    .line 411
    .end local v2    # "primaryPhone":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 412
    iget-wide v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 413
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    .line 416
    :cond_2
    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 418
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    :cond_3
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    .line 422
    .local v0, "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 423
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 424
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 425
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    .line 426
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 427
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 428
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->mimeType:Ljava/lang/String;

    .line 430
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    .end local v0    # "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    .end local v1    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    :catchall_0
    move-exception v3

    .line 451
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 450
    throw v3

    .line 433
    .restart local v1    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 434
    invoke-direct {p0, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 436
    return-void

    .line 439
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;Landroid/content/Context;)V

    .line 440
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 441
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 399
    return-void

    .line 442
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 443
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    .line 444
    .restart local v0    # "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 445
    iget-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    .end local v0    # "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->showDisambiguationDialog(Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 399
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method showDisambiguationDialog(Ljava/util/ArrayList;)V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 504
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 510
    iget v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-boolean v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mIsVideoCall:Z

    iget v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallInitiationType:I

    .line 509
    invoke-static {v2, p1, v3, v4, v5}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;IZI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method startInteraction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;Z)V

    .line 355
    return-void
.end method

.method startInteraction(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "useDefault"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 372
    :cond_0
    iput-boolean p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    .line 374
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "inputUriAsString":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    const-string/jumbo v0, "data"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    const-string/jumbo v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 388
    .local v2, "queryUri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    .line 390
    sget-object v3, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    .line 391
    const-string/jumbo v4, "mimetype IN (\'vnd.android.cursor.item/phone_v2\', \'vnd.android.cursor.item/sip_address\') AND data1 NOT NULL"

    move-object v6, v5

    .line 388
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    .line 394
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 368
    return-void

    .line 379
    .end local v2    # "queryUri":Landroid/net/Uri;
    :cond_1
    move-object v2, p1

    .restart local v2    # "queryUri":Landroid/net/Uri;
    goto :goto_0

    .line 381
    .end local v2    # "queryUri":Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    move-object v2, p1

    .restart local v2    # "queryUri":Landroid/net/Uri;
    goto :goto_0

    .line 384
    .end local v2    # "queryUri":Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input Uri must be contact Uri or data Uri (input: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
