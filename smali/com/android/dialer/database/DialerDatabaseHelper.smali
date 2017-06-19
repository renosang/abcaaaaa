.class public Lcom/android/dialer/database/DialerDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;,
        Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;,
        Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;,
        Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;,
        Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;,
        Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;
    }
.end annotation


# static fields
.field public static final SMART_DIAL_UPDATED_URI:Landroid/net/Uri;

.field private static final mLock:Ljava/lang/Object;

.field private static final sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsTestInstance:Z

.field private mMultiGetNameNumberMethod:Ljava/lang/reflect/Method;

.field private mMultiMatchClass:Ljava/lang/Class;

.field private mMultiMatchMethod:Ljava/lang/reflect/Method;

.field private mMultiMatchObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    const-string/jumbo v0, "content://com.android.dialer/smart_dial_updated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->SMART_DIAL_UPDATED_URI:Landroid/net/Uri;

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 411
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 410
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mIsTestInstance:Z

    .line 416
    const-string/jumbo v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    .line 414
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "isTestInstance"    # Z

    .prologue
    .line 406
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 407
    iput-boolean p3, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mIsTestInstance:Z

    .line 405
    return-void
.end method

.method private createVoicemailArchiveTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 743
    const-string/jumbo v0, "CREATE TABLE voicemail_archive_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,date LONG,duration LONG,mime_type TEXT,countryiso TEXT,_data TEXT,geocoded_location TEXT,name TEXT,numbertype INTEGER,numberlabel TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id LONG,formatted_number TEXT,archived_by_user INTEGER,presentation INTEGER,subscription_component_name TEXT,subscription_id TEXT,features INTEGER,server_id INTEGER,transcription TEXT,photo_uri TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method private getDeletedContactCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "lastUpdateMillis"    # Ljava/lang/String;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 710
    sget-object v1, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->URI:Landroid/net/Uri;

    .line 711
    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->PROJECTION:[Ljava/lang/String;

    .line 712
    const-string/jumbo v3, "contact_deleted_timestamp > ?"

    .line 713
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 714
    const/4 v5, 0x0

    .line 709
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/dialer/database/DialerDatabaseHelper;

    monitor-enter v1

    .line 387
    :try_start_0
    sget-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 392
    const-string/jumbo v3, "dialer.db"

    .line 391
    invoke-direct {v0, v2, v3}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 394
    :cond_0
    sget-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getNewInstanceForTest(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private initMultiLanguageSearch()V
    .locals 6

    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 422
    const-string/jumbo v1, "com.qualcomm.qti.smartsearch.SmartMatch"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchClass:Ljava/lang/Class;

    .line 423
    const-string/jumbo v1, "DialerDatabaseHelper"

    const-string/jumbo v2, "create multi match success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchObject:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchObject:Ljava/lang/Object;

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchClass:Ljava/lang/Class;

    .line 431
    const-string/jumbo v2, "getMatchStringIndex"

    .line 430
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 431
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 432
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 430
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchMethod:Ljava/lang/reflect/Method;

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiGetNameNumberMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchClass:Ljava/lang/Class;

    .line 436
    const-string/jumbo v2, "getNameNumber"

    .line 435
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 436
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 435
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiGetNameNumberMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_3
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removePotentiallyCorruptedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "last_update_time"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 726
    const-string/jumbo v0, "prefix_table"

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contact_id IN (SELECT contact_id FROM smartdial_table WHERE last_smartdial_update_time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    const-string/jumbo v2, ")"

    .line 727
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 732
    const-string/jumbo v0, "smartdial_table"

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "last_smartdial_update_time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    return-void
.end method

.method private resetSmartDialLastUpdatedTime()V
    .locals 6

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    .line 636
    const-string/jumbo v3, "com.android.dialer"

    const/4 v4, 0x0

    .line 635
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 637
    .local v0, "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 638
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "last_updated_millis"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 639
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    return-void
.end method

.method private setupTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 464
    const-string/jumbo v0, "CREATE TABLE smartdial_table (id INTEGER PRIMARY KEY AUTOINCREMENT,data_id INTEGER, phone_number TEXT,contact_id INTEGER,lookup_key TEXT,display_name TEXT, photo_id INTEGER, last_smartdial_update_time LONG, last_time_used LONG, times_used INTEGER, starred INTEGER, is_super_primary INTEGER, in_visible_group INTEGER, is_primary INTEGER, carrier_presence INTEGER NOT NULL DEFAULT 0,account_type TEXT, account_name TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "CREATE TABLE prefix_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,prefix TEXT COLLATE NOCASE, contact_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 498
    const-string/jumbo v0, "CREATE TABLE filtered_numbers_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,normalized_number TEXT UNIQUE,number TEXT,country_iso TEXT,times_filtered INTEGER,last_time_filtered LONG,creation_time LONG,type INTEGER,source INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->createVoicemailArchiveTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 511
    const-string/jumbo v0, "database_version"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-boolean v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mIsTestInstance:Z

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->resetSmartDialLastUpdatedTime()V

    .line 462
    :cond_0
    return-void
.end method


# virtual methods
.method countPrefixTableRows(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 785
    const-string/jumbo v0, "SELECT COUNT(1) FROM prefix_table"

    .line 786
    const/4 v1, 0x0

    .line 785
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 518
    const-string/jumbo v0, "DROP TABLE IF EXISTS prefix_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v0, "DROP TABLE IF EXISTS smartdial_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 520
    const-string/jumbo v0, "DROP TABLE IF EXISTS properties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v0, "DROP TABLE IF EXISTS filtered_numbers_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v0, "DROP TABLE IF EXISTS voicemail_archive_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public getLooseMatches(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialNameMatcher;)Ljava/util/ArrayList;
    .locals 40
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "nameMatcher"    # Lcom/android/dialer/dialpad/SmartDialNameMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/dialer/dialpad/SmartDialNameMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    sget-object v3, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v31

    .line 1157
    .local v31, "inUpdate":Z
    if-nez v31, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1158
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1161
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28

    .line 1164
    .local v28, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v32, "looseQuery":Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_2

    .line 1166
    const-string/jumbo v3, "%"

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    add-int/lit8 v30, v30, 0x2

    goto :goto_0

    .line 1169
    :cond_2
    const-string/jumbo v3, "%"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v35

    .line 1173
    .local v35, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;>;"
    const/16 v36, 0x0

    .line 1175
    .local v36, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    .line 1178
    .local v26, "currentTimeStamp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "SELECT data_id, display_name, photo_id, phone_number, contact_id, lookup_key, carrier_presence, account_type, account_name FROM smartdial_table WHERE contact_id IN  (SELECT contact_id FROM prefix_table WHERE prefix_table.prefix LIKE \'"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1193
    const-string/jumbo v37, "\')"

    .line 1178
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1194
    const-string/jumbo v37, " ORDER BY "

    .line 1178
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1194
    const-string/jumbo v37, "smartdial_table.starred DESC, smartdial_table.is_super_primary DESC, (CASE WHEN ( ?1 - smartdial_table.last_time_used) < 259200000 THEN 0  WHEN ( ?1 - smartdial_table.last_time_used) < 2592000000 THEN 1  ELSE 2 END), smartdial_table.times_used DESC, smartdial_table.in_visible_group DESC, smartdial_table.display_name, smartdial_table.contact_id, smartdial_table.is_primary DESC"

    .line 1178
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v26, v37, v38

    .line 1178
    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1196
    .local v27, "cursor":Landroid/database/Cursor;
    if-nez v27, :cond_3

    .line 1197
    return-object v35

    .line 1205
    :cond_3
    const/16 v18, 0x0

    .line 1206
    .local v18, "columnDataId":I
    const/16 v19, 0x1

    .line 1207
    .local v19, "columnDisplayNamePrimary":I
    const/16 v23, 0x2

    .line 1208
    .local v23, "columnPhotoId":I
    const/16 v22, 0x3

    .line 1209
    .local v22, "columnNumber":I
    const/16 v20, 0x4

    .line 1210
    .local v20, "columnId":I
    const/16 v21, 0x5

    .line 1211
    .local v21, "columnLookupKey":I
    const/16 v17, 0x6

    .line 1212
    .local v17, "columnCarrierPresence":I
    const/16 v16, 0x7

    .line 1213
    .local v16, "columnAccountType":I
    const/16 v2, 0x8

    .line 1218
    .local v2, "columnAccountName":I
    :try_start_0
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 1219
    .local v29, "duplicates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;>;"
    const/16 v25, 0x0

    .line 1224
    .local v25, "counter":I
    :cond_4
    :goto_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x28

    move/from16 v0, v25

    if-ge v0, v3, :cond_7

    .line 1225
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1226
    .local v6, "dataID":J
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1227
    .local v8, "displayName":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1228
    .local v9, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1229
    .local v4, "id":J
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1230
    .local v11, "photoId":J
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1231
    .local v10, "lookupKey":Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1232
    .local v13, "carrierPresence":I
    const/4 v3, 0x7

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1233
    .local v14, "accountType":Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1238
    .local v15, "accountName":Ljava/lang/String;
    new-instance v24, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v4, v5}, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;Ljava/lang/String;J)V

    .line 1239
    .local v24, "contactMatch":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1247
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v33

    .line 1249
    .local v33, "nameMatches":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v3

    if-eqz v3, :cond_6

    const/16 v34, 0x1

    .line 1250
    .local v34, "numberMatches":Z
    :goto_2
    if-nez v33, :cond_5

    if-eqz v34, :cond_4

    .line 1252
    :cond_5
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    new-instance v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    invoke-direct/range {v3 .. v15}, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 1249
    .end local v34    # "numberMatches":Z
    :cond_6
    const/16 v34, 0x0

    .restart local v34    # "numberMatches":Z
    goto :goto_2

    .line 1266
    .end local v4    # "id":J
    .end local v6    # "dataID":J
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "phoneNumber":Ljava/lang/String;
    .end local v10    # "lookupKey":Ljava/lang/String;
    .end local v11    # "photoId":J
    .end local v13    # "carrierPresence":I
    .end local v14    # "accountType":Ljava/lang/String;
    .end local v15    # "accountName":Ljava/lang/String;
    .end local v24    # "contactMatch":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    .end local v33    # "nameMatches":Z
    .end local v34    # "numberMatches":Z
    :cond_7
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1268
    return-object v35

    .line 1265
    .end local v25    # "counter":I
    .end local v29    # "duplicates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;>;"
    :catchall_0
    move-exception v3

    .line 1266
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1265
    throw v3
.end method

.method public getMultiMatchMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMultiMatchObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 605
    const/4 v10, 0x0

    .line 606
    .local v10, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "properties"

    .line 607
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "property_value"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 608
    const-string/jumbo v3, "property_key=?"

    .line 609
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 606
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 610
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 612
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 616
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_1
    if-eqz v10, :cond_2

    :goto_0
    return-object v10

    .line 615
    .restart local v10    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 616
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 615
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 620
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 621
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    return-object p3

    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object v10, p3

    .line 619
    goto :goto_0
.end method

.method public getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 626
    const-string/jumbo v2, ""

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "stored":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method insertNamePrefixes(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "nameCursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 928
    const-string/jumbo v11, "display_name"

    .line 927
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 929
    .local v3, "columnIndexName":I
    const-string/jumbo v11, "contact_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 931
    .local v2, "columnIndexContactId":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 933
    :try_start_0
    const-string/jumbo v10, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    .line 937
    .local v10, "sqlInsert":Ljava/lang/String;
    const-string/jumbo v11, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 939
    .local v5, "insert":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 941
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiGetNameNumberMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    .line 943
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiGetNameNumberMethod:Ljava/lang/reflect/Method;

    .line 944
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mMultiMatchObject:Ljava/lang/Object;

    .line 943
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 944
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 943
    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 945
    .local v6, "nameNumber":Ljava/lang/String;
    const-string/jumbo v11, "[\\[\\.\\]]"

    const-string/jumbo v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 946
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v11, 0x1

    invoke-virtual {v5, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 947
    const/4 v11, 0x2

    invoke-virtual {v5, v11, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 948
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 949
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 950
    .end local v6    # "nameNumber":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 951
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 966
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .end local v10    # "sqlInsert":Ljava/lang/String;
    :catchall_0
    move-exception v11

    .line 967
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 966
    throw v11

    .line 955
    .restart local v5    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .restart local v10    # "sqlInsert":Ljava/lang/String;
    :cond_1
    :try_start_3
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 954
    invoke-static {v11}, Lcom/android/dialer/dialpad/SmartDialPrefix;->generateNamePrefixes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 956
    .local v9, "namePrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "namePrefix$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 957
    .local v7, "namePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v11, 0x1

    invoke-virtual {v5, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 958
    const/4 v11, 0x2

    invoke-virtual {v5, v11, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 959
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 960
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_1

    .line 965
    .end local v7    # "namePrefix":Ljava/lang/String;
    .end local v8    # "namePrefix$iterator":Ljava/util/Iterator;
    .end local v9    # "namePrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 967
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 926
    return-void
.end method

.method protected insertUpdatedContactsAndNumberPrefix(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/Long;)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "updatedContactCursor"    # Landroid/database/Cursor;
    .param p3, "currentMillis"    # Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 828
    :try_start_0
    const-string/jumbo v12, "INSERT INTO smartdial_table (data_id, phone_number, contact_id, lookup_key, display_name, photo_id, last_time_used, times_used, starred, is_super_primary, in_visible_group, is_primary, carrier_presence, last_smartdial_update_time, account_type, account_name)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 846
    .local v12, "sqlInsert":Ljava/lang/String;
    const-string/jumbo v13, "INSERT INTO smartdial_table (data_id, phone_number, contact_id, lookup_key, display_name, photo_id, last_time_used, times_used, starred, is_super_primary, in_visible_group, is_primary, carrier_presence, last_smartdial_update_time, account_type, account_name)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 848
    .local v4, "insert":Landroid/database/sqlite/SQLiteStatement;
    const-string/jumbo v11, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    .line 852
    .local v11, "numberSqlInsert":Ljava/lang/String;
    const-string/jumbo v13, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 854
    .local v7, "numberInsert":Landroid/database/sqlite/SQLiteStatement;
    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 855
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 856
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 861
    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, "number":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 865
    const/4 v13, 0x2

    invoke-virtual {v4, v13, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 869
    const/4 v13, 0x5

    .line 868
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 870
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 873
    const/4 v13, 0x4

    invoke-virtual {v4, v13, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 877
    const/4 v13, 0x6

    .line 876
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "displayName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0129

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v4, v14, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 883
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v13, 0x1

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 884
    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v13, 0x3

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 885
    const/4 v13, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v13, 0x6

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 886
    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v13, 0x7

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 887
    const/16 v13, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x8

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 888
    const/16 v13, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x9

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 889
    const/16 v13, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0xa

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 890
    const/16 v13, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0xb

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 891
    const/16 v13, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0xc

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 892
    const/16 v13, 0xe

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0xd

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v13, 0xe

    invoke-virtual {v4, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 895
    const/16 v13, 0xf

    .line 894
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xf

    invoke-virtual {v4, v14, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 897
    const/16 v13, 0x10

    .line 896
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-virtual {v4, v14, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 898
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 900
    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "contactPhoneNumber":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parseToNumberTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 904
    .local v10, "numberPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "numberPrefix$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 906
    .local v8, "numberPrefix":Ljava/lang/String;
    const/4 v13, 0x4

    .line 905
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v13, 0x1

    invoke-virtual {v7, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 907
    const/4 v13, 0x2

    invoke-virtual {v7, v13, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 908
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 909
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 914
    .end local v2    # "contactPhoneNumber":Ljava/lang/String;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v4    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .end local v5    # "lookupKey":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "numberInsert":Landroid/database/sqlite/SQLiteStatement;
    .end local v8    # "numberPrefix":Ljava/lang/String;
    .end local v9    # "numberPrefix$iterator":Ljava/util/Iterator;
    .end local v10    # "numberPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "numberSqlInsert":Ljava/lang/String;
    .end local v12    # "sqlInsert":Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 914
    throw v13

    .line 881
    .restart local v3    # "displayName":Ljava/lang/String;
    .restart local v4    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .restart local v5    # "lookupKey":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "numberInsert":Landroid/database/sqlite/SQLiteStatement;
    .restart local v11    # "numberSqlInsert":Ljava/lang/String;
    .restart local v12    # "sqlInsert":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x5

    :try_start_1
    invoke-virtual {v4, v13, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 913
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v5    # "lookupKey":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 825
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 458
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldNumber"    # I
    .param p3, "newNumber"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x9

    .line 532
    const-string/jumbo v1, "database_version"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    .line 534
    .local v0, "oldVersion":I
    if-nez v0, :cond_0

    .line 535
    const-string/jumbo v1, "DialerDatabaseHelper"

    const-string/jumbo v2, "Malformed database version..recreating database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 539
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 540
    return-void

    .line 543
    :cond_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 544
    const-string/jumbo v1, "DROP TABLE IF EXISTS filtered_numbers_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v1, "CREATE TABLE filtered_numbers_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,normalized_number TEXT UNIQUE,number TEXT,country_iso TEXT,times_filtered INTEGER,last_time_filtered LONG,creation_time LONG,type INTEGER,source INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x7

    .line 559
    :cond_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 561
    const/16 v0, 0x8

    .line 564
    :cond_3
    if-ge v0, v3, :cond_4

    .line 565
    const-string/jumbo v1, "DROP TABLE IF EXISTS voicemail_archive_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->createVoicemailArchiveTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 567
    const/16 v0, 0x9

    .line 570
    :cond_4
    if-eq v0, v3, :cond_5

    .line 571
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 572
    const-string/jumbo v2, "error upgrading the database to version 9"

    .line 571
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_5
    const-string/jumbo v1, "database_version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method removeAllContacts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 776
    const-string/jumbo v0, "smartdial_table"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 777
    const-string/jumbo v0, "prefix_table"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method removeDeletedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deletedContactCursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 686
    if-nez p2, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 692
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 695
    .local v0, "deleteContactId":Ljava/lang/Long;
    const-string/jumbo v1, "smartdial_table"

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 695
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 697
    const-string/jumbo v1, "prefix_table"

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 697
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 702
    .end local v0    # "deleteContactId":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    .line 703
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 704
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 702
    throw v1

    .line 701
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 704
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 685
    return-void
.end method

.method removeUpdatedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "updatedContactCursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 797
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 799
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 800
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 804
    .local v0, "contactId":Ljava/lang/Long;
    const-string/jumbo v1, "smartdial_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    const/4 v3, 0x0

    .line 804
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    const-string/jumbo v1, "prefix_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 807
    const/4 v3, 0x0

    .line 806
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 811
    .end local v0    # "contactId":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    .line 812
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 811
    throw v1

    .line 810
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 796
    return-void
.end method

.method public setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "property_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v1, "property_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 589
    return-void
.end method

.method public startSmartDialUpdateThread()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 645
    :cond_0
    return-void
.end method

.method public updateSmartDialDatabase()V
    .locals 18

    .prologue
    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->initMultiLanguageSearch()V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 983
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v17, Lcom/android/dialer/database/DialerDatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v17

    .line 987
    const/4 v14, 0x0

    .line 990
    .local v14, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    .line 991
    const-string/jumbo v3, "com.android.dialer"

    const/4 v4, 0x0

    .line 990
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 993
    .local v9, "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "last_updated_millis"

    const-wide/16 v4, 0x0

    invoke-interface {v9, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 992
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 1000
    .local v12, "lastUpdateMillis":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1007
    .local v8, "currentMillis":Ljava/lang/Long;
    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1010
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/dialer/database/DialerDatabaseHelper;->getDeletedContactCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->removeDeletedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 1011
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/dialer/database/DialerDatabaseHelper;->removePotentiallyCorruptedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v2, "0"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1028
    sget-object v3, Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;->URI:Landroid/net/Uri;

    .line 1029
    sget-object v4, Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;->PROJECTION:[Ljava/lang/String;

    .line 1030
    const-string/jumbo v5, "contact_last_updated_timestamp > ?"

    .line 1031
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    .line 1032
    const/4 v7, 0x0

    .line 1027
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1034
    .local v15, "updatedContactCursor":Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 1035
    const-string/jumbo v2, "DialerDatabaseHelper"

    const-string/jumbo v3, "SmartDial query received null for cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v17

    .line 1036
    return-void

    .line 1039
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/android/dialer/database/DialerDatabaseHelper;->removeUpdatedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1051
    .end local v15    # "updatedContactCursor":Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->URI:Landroid/net/Uri;

    .line 1052
    sget-object v4, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "contact_last_updated_timestamp > ? AND length(lookup) < 1000"

    .line 1053
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x0

    .line 1051
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1054
    .local v16, "updatedPhoneCursor":Landroid/database/Cursor;
    if-nez v16, :cond_2

    .line 1055
    const-string/jumbo v2, "DialerDatabaseHelper"

    const-string/jumbo v3, "SmartDial query received null for cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v17

    .line 1056
    return-void

    .line 1040
    .end local v16    # "updatedPhoneCursor":Landroid/database/Cursor;
    .restart local v15    # "updatedContactCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 1041
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1040
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 983
    .end local v8    # "currentMillis":Ljava/lang/Long;
    .end local v9    # "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    .end local v12    # "lastUpdateMillis":Ljava/lang/String;
    .end local v15    # "updatedContactCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v17

    throw v2

    .line 1061
    .restart local v8    # "currentMillis":Ljava/lang/Long;
    .restart local v9    # "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    .restart local v12    # "lastUpdateMillis":Ljava/lang/String;
    .restart local v16    # "updatedPhoneCursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v8}, Lcom/android/dialer/database/DialerDatabaseHelper;->insertUpdatedContactsAndNumberPrefix(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/Long;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1066
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT DISTINCT display_name, contact_id FROM smartdial_table WHERE last_smartdial_update_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1077
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 1072
    invoke-virtual {v10, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v13

    .line 1079
    .local v13, "nameCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 1086
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/android/dialer/database/DialerDatabaseHelper;->insertNamePrefixes(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1091
    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_3
    const-string/jumbo v2, "CREATE INDEX IF NOT EXISTS smartdial_contact_id_index ON smartdial_table (contact_id);"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1099
    const-string/jumbo v2, "CREATE INDEX IF NOT EXISTS smartdial_last_update_index ON smartdial_table (last_smartdial_update_time);"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v2, "CREATE INDEX IF NOT EXISTS smartdial_sort_index ON smartdial_table (starred, is_super_primary, last_time_used, times_used, in_visible_group, display_name, contact_id, is_primary);"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v2, "CREATE INDEX IF NOT EXISTS nameprefix_index ON prefix_table (prefix);"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v2, "CREATE INDEX IF NOT EXISTS nameprefix_contact_id_index ON prefix_table (contact_id);"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    const-string/jumbo v2, "ANALYZE smartdial_table"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v2, "ANALYZE prefix_table"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    const-string/jumbo v2, "ANALYZE smartdial_contact_id_index"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v2, "ANALYZE smartdial_last_update_index"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v2, "ANALYZE nameprefix_index"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const-string/jumbo v2, "ANALYZE nameprefix_contact_id_index"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1138
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1139
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "last_updated_millis"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v11, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1140
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/database/DialerDatabaseHelper;->SMART_DIAL_UPDATED_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v17

    .line 978
    return-void

    .line 1065
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "nameCursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    .line 1066
    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1065
    throw v2

    .line 1090
    .restart local v13    # "nameCursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v2

    .line 1091
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1090
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 579
    const-string/jumbo v0, "ALTER TABLE smartdial_table ADD carrier_presence INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    return-void
.end method
