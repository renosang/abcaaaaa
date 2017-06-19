.class public Lcom/android/dialer/SpeedDialListActivity;
.super Landroid/app/ListActivity;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/SpeedDialListActivity$Record;,
        Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;
    }
.end annotation


# static fields
.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final PICK_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

.field private mAddSpeedDialDialog:Landroid/app/AlertDialog;

.field private mCompleteButton:Landroid/widget/Button;

.field private mEditNumber:Landroid/widget/EditText;

.field private mInitialPickNumber:I

.field private mPickNumber:I

.field private mRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/dialer/SpeedDialListActivity$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/SpeedDialListActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/SpeedDialListActivity;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/SpeedDialListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/SpeedDialListActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/dialer/SpeedDialListActivity;I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/SpeedDialListActivity;->pickContact(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/dialer/SpeedDialListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/SpeedDialListActivity;->saveSpeedDial()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    .line 93
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v4

    .line 94
    const-string/jumbo v1, "number"

    aput-object v1, v0, v5

    .line 95
    const-string/jumbo v1, "normalized_number"

    aput-object v1, v0, v6

    .line 90
    sput-object v0, Lcom/android/dialer/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    .line 101
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v4

    .line 102
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v5

    .line 103
    const-string/jumbo v1, "data4"

    aput-object v1, v0, v6

    .line 98
    sput-object v0, Lcom/android/dialer/SpeedDialListActivity;->PICK_PROJECTION:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 292
    :cond_0
    return-void
.end method

.method private getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/SpeedDialListActivity$Record;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 205
    const/4 v7, 0x0

    .line 206
    .local v7, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    const/4 v6, 0x0

    .line 208
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v8, Lcom/android/dialer/SpeedDialListActivity$Record;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/dialer/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v8, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v7    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    move-result-wide v0

    iput-wide v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->contactId:J

    .line 212
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->photoId:J

    .line 213
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    .line 214
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    .line 215
    iget-object v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 216
    iget-object v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 220
    .end local v8    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_1
    return-object v7

    .line 219
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    :catchall_0
    move-exception v0

    .line 220
    .end local v7    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    :goto_1
    if-eqz v6, :cond_2

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    .local v7, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    goto :goto_1

    .end local v7    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    .restart local v8    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    :cond_3
    move-object v7, v8

    .end local v8    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    .restart local v7    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    goto :goto_0
.end method

.method private pickContact(I)V
    .locals 2
    .param p1, "number"    # I

    .prologue
    .line 379
    iput p1, p0, Lcom/android/dialer/SpeedDialListActivity;->mPickNumber:I

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    return-void
.end method

.method private saveSpeedDial()V
    .locals 5

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "number":Ljava/lang/String;
    const/4 v1, 0x0

    .line 274
    .local v1, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    if-eqz v0, :cond_0

    .line 276
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 277
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 278
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/android/dialer/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/SpeedDialListActivity$Record;

    move-result-object v1

    .line 279
    .local v1, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lcom/android/dialer/SpeedDialListActivity$Record;

    .end local v1    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    invoke-direct {v1, v0}, Lcom/android/dialer/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v1    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    iput-object v0, v1, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    .line 284
    .end local v1    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v1, :cond_1

    .line 285
    iget v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mPickNumber:I

    .line 286
    iget-object v4, v1, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    .line 285
    invoke-static {p0, v3, v4}, Lcom/android/dialer/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mPickNumber:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v3}, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 271
    :cond_1
    return-void
.end method

.method private showAddSpeedDialDialog(I)V
    .locals 7
    .param p1, "number"    # I

    .prologue
    const/4 v6, 0x0

    .line 228
    iput p1, p0, Lcom/android/dialer/SpeedDialListActivity;->mPickNumber:I

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0d0305

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 232
    const v5, 0x7f04001f

    .line 231
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 235
    const v4, 0x7f0e008e

    .line 234
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 236
    .local v3, "pickContacts":Landroid/widget/ImageButton;
    new-instance v4, Lcom/android/dialer/SpeedDialListActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/android/dialer/SpeedDialListActivity$1;-><init>(Lcom/android/dialer/SpeedDialListActivity;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v4, 0x7f0e008d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    .line 244
    iget-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 245
    iget-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/android/dialer/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    const v4, 0x7f0e008f

    .line 247
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 249
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/dialer/SpeedDialListActivity$2;

    invoke-direct {v4, p0}, Lcom/android/dialer/SpeedDialListActivity$2;-><init>(Lcom/android/dialer/SpeedDialListActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v4, 0x7f0e0090

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mCompleteButton:Landroid/widget/Button;

    .line 256
    iget-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mCompleteButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/dialer/SpeedDialListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/dialer/SpeedDialListActivity$3;-><init>(Lcom/android/dialer/SpeedDialListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    .line 268
    iget-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 387
    if-eqz p1, :cond_0

    .line 388
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 389
    return-void

    .line 392
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 393
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/SpeedDialListActivity;->PICK_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/SpeedDialListActivity$Record;

    move-result-object v0

    .line 394
    .local v0, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    if-eqz v0, :cond_1

    .line 395
    iget v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mPickNumber:I

    iget-object v2, v0, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/dialer/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/dialer/SpeedDialListActivity;->mPickNumber:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 386
    .end local v0    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "initialPickNumber"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mInitialPickNumber:I

    .line 144
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    .line 147
    iget-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/dialer/SpeedDialListActivity$Record;

    const v5, 0x7f0d0275

    invoke-virtual {p0, v5}, Lcom/android/dialer/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dialer/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 151
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 152
    .local v2, "listview":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 156
    .local v1, "actionBarHeight":I
    invoke-virtual {v2, v6, v1, v6, v6}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 158
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 160
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 162
    new-instance v3, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-direct {v3, p0}, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;-><init>(Lcom/android/dialer/SpeedDialListActivity;)V

    iput-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    .line 163
    iget-object v3, p0, Lcom/android/dialer/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {p0, v3}, Lcom/android/dialer/SpeedDialListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
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
    .line 300
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 304
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v5

    .line 305
    .local v5, "sub":I
    iget-object v7, p0, Lcom/android/dialer/SpeedDialListActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 306
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_0

    .line 307
    const-string/jumbo v7, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string/jumbo v7, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .end local v5    # "sub":I
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 313
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SpeedDial"

    const-string/jumbo v8, "Could not find voice mail setup activity"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v2, p3, 0x1

    .line 318
    .local v2, "number":I
    iget-object v7, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/SpeedDialListActivity$Record;

    .line 319
    .local v4, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    if-nez v4, :cond_2

    .line 320
    invoke-direct {p0, v2}, Lcom/android/dialer/SpeedDialListActivity;->showAddSpeedDialDialog(I)V

    goto :goto_0

    .line 322
    :cond_2
    new-instance v3, Landroid/widget/PopupMenu;

    const v7, 0x800003

    invoke-direct {v3, p0, p2, v7}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 323
    .local v3, "pm":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    const v10, 0x7f0d0307

    invoke-interface {v7, v2, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 324
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v8, 0x3ea

    const/4 v9, 0x0

    const v10, 0x7f0d0308

    invoke-interface {v7, v2, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 325
    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 326
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 406
    .local v0, "number":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 416
    const/4 v1, 0x0

    return v1

    .line 408
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/dialer/SpeedDialListActivity;->showAddSpeedDialDialog(I)V

    .line 409
    return v2

    .line 411
    :pswitch_1
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    invoke-static {p0, v0, v3}, Lcom/android/dialer/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 414
    return v2

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 198
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->finish()V

    .line 199
    const/4 v0, 0x1

    return v0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 168
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 171
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-gt v0, v6, :cond_1

    .line 172
    invoke-static {p0, v0}, Lcom/android/dialer/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "phoneNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    if-eqz v1, :cond_0

    .line 175
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 176
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 177
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/android/dialer/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/dialer/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/SpeedDialListActivity$Record;

    move-result-object v2

    .line 178
    .local v2, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    if-nez v2, :cond_0

    .line 179
    new-instance v2, Lcom/android/dialer/SpeedDialListActivity$Record;

    .end local v2    # "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    invoke-direct {v2, v1}, Lcom/android/dialer/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    .line 182
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v4}, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 187
    iget v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mInitialPickNumber:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    iget v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mInitialPickNumber:I

    if-gt v4, v6, :cond_2

    .line 188
    iget v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mInitialPickNumber:I

    invoke-direct {p0, v4}, Lcom/android/dialer/SpeedDialListActivity;->pickContact(I)V

    .line 190
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/dialer/SpeedDialListActivity;->mInitialPickNumber:I

    .line 167
    :cond_2
    return-void
.end method
