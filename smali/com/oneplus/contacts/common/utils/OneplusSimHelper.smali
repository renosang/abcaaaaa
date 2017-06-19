.class public Lcom/oneplus/contacts/common/utils/OneplusSimHelper;
.super Ljava/lang/Object;
.source "OneplusSimHelper.java"


# static fields
.field public static final VALID_SIM_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oneplus/simcontacts/framework/provider/SimContactContract$ValidSim;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/contacts/common/utils/OneplusSimHelper;->VALID_SIM_URI:Landroid/net/Uri;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimAccountValidState(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 20
    const/4 v8, -0x1

    .line 21
    .local v8, "validState":I
    const-string/jumbo v3, "contact_account_name=? AND contact_account_type=?"

    .line 23
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 25
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 27
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 29
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/contacts/common/utils/OneplusSimHelper;->VALID_SIM_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 30
    const/4 v5, 0x0

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 31
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "sim_state"

    .line 32
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 38
    :cond_0
    if-eqz v6, :cond_1

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 42
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 35
    :catch_0
    move-exception v7

    .line 36
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "OneplusSimHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-eqz v6, :cond_1

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 37
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 38
    if-eqz v6, :cond_2

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_2
    throw v0
.end method

.method public static isSimAccountReady(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 77
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimAccountValid(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
