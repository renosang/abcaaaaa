.class Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;
.super Ljava/lang/Thread;
.source "ContactAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/list/ContactAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountLoader"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/contacts/common/list/ContactAccountManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/contacts/common/list/ContactAccountManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    .line 215
    const-string/jumbo v0, "ContactsAccountLoader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->mResolver:Landroid/content/ContentResolver;

    .line 214
    return-void
.end method

.method private loadAccountInBackground()V
    .locals 8

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    const-string/jumbo v1, "ContactAccountManager"

    const-string/jumbo v2, "Ready to load contact account!"

    invoke-static {v0, v1, v2}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-wrap0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v6, 0x0

    .line 228
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/contacts/common/list/ContactAccountLoader;->ONEPLUS_ACCOUNTS_URI:Landroid/net/Uri;

    .line 229
    sget-object v2, Lcom/oneplus/contacts/common/list/ContactAccountLoader$AccountInfoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 230
    const/4 v5, 0x0

    .line 228
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    :cond_0
    const-string/jumbo v0, "ContactAccountManager"

    const-string/jumbo v1, "Failed to load contacts account!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    if-eqz v6, :cond_1

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_1
    return-void

    .line 235
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    const-string/jumbo v1, "ContactAccountManager"

    const-string/jumbo v2, "load account complete!"

    invoke-static {v0, v1, v2}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-wrap0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v6}, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->storeAllAccount(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v6, :cond_3

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v7

    .line 238
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    if-eqz v6, :cond_3

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 239
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 240
    if-eqz v6, :cond_4

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_4
    throw v0
.end method

.method private storeAllAccount(Landroid/database/Cursor;)V
    .locals 23
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-gtz v11, :cond_1

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    const-string/jumbo v20, "ContactAccountManager"

    const-string/jumbo v21, "There is empty account"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-wrap0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-static {v11}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-get1(Lcom/oneplus/contacts/common/list/ContactAccountManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    return-void

    .line 252
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v10, "allAccount":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/contacts/common/list/ContactAccount;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "accountIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v12, -0x1

    .local v12, "phoneAccountId":J
    const-wide/16 v18, -0x1

    .local v18, "simAccountId":J
    const-wide/16 v14, -0x1

    .local v14, "sim1AccountId":J
    const-wide/16 v16, -0x1

    .line 255
    .local v16, "sim2AccountId":J
    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 256
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 258
    const/4 v11, 0x0

    .line 257
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 260
    .local v4, "accountId":J
    const/4 v11, 0x1

    .line 259
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "accountName":Ljava/lang/String;
    const/4 v11, 0x2

    .line 261
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "accountType":Ljava/lang/String;
    const/4 v11, 0x3

    .line 263
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "accountDataSet":Ljava/lang/String;
    const/4 v11, 0x4

    .line 265
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 267
    .local v9, "unGroupedVisible":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    const-string/jumbo v20, "ContactAccountManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "accountId =="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "accountName =="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 268
    const-string/jumbo v22, "accountType =="

    .line 267
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 269
    const-string/jumbo v22, "accountDataSet =="

    .line 267
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 269
    const-string/jumbo v22, "unGroupedVisible =="

    .line 267
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-wrap0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v3, Lcom/oneplus/contacts/common/list/ContactAccount;

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/contacts/common/list/ContactAccount;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    .local v3, "account":Lcom/oneplus/contacts/common/list/ContactAccount;
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/list/ContactAccount;->isLocalPhoneAccount()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 274
    move-wide v12, v4

    .line 285
    :cond_2
    :goto_1
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    :cond_3
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/list/ContactAccount;->isSimAccount()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 276
    move-wide/from16 v18, v4

    goto :goto_1

    .line 278
    :cond_4
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/list/ContactAccount;->isSim1Account()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 279
    move-wide v14, v4

    goto :goto_1

    .line 281
    :cond_5
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/list/ContactAccount;->isSim2Account()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 282
    move-wide/from16 v16, v4

    goto :goto_1

    .line 289
    .end local v3    # "account":Lcom/oneplus/contacts/common/list/ContactAccount;
    .end local v4    # "accountId":J
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v8    # "accountDataSet":Ljava/lang/String;
    .end local v9    # "unGroupedVisible":I
    :cond_6
    invoke-static {}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-get0()[B

    move-result-object v20

    monitor-enter v20

    .line 290
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-static {v11, v10}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-set1(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-static {v11, v2}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-set0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 292
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-static {v11, v12, v13}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-set2(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    move-wide/from16 v0, v18

    invoke-static {v11, v0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-set5(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-static {v11, v14, v15}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-set3(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-set4(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v20

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-static {v11}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->-get1(Lcom/oneplus/contacts/common/list/ContactAccountManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    return-void

    .line 289
    :catchall_0
    move-exception v11

    monitor-exit v20

    throw v11
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->loadAccountInBackground()V

    .line 220
    return-void
.end method
