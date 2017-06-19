.class Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;
.super Landroid/os/HandlerThread;
.source "ContactAccountIconManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    .line 480
    const-string/jumbo v0, "ContactsAccountLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 481
    iput-object p2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->mResolver:Landroid/content/ContentResolver;

    .line 479
    return-void
.end method

.method private checkValidSimCount()V
    .locals 6

    .prologue
    .line 581
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v3}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get2(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/content/Context;

    move-result-object v3

    .line 580
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 583
    .local v2, "validSimCount":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v3, v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-set0(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;I)I

    .line 584
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v3}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get3(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 586
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 587
    const-string/jumbo v3, "ContactAccountIconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkValidSimCount()-->validSimCount=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v3}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get3(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 579
    return-void

    .line 582
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "validSimCount":I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "validSimCount":I
    goto :goto_0
.end method

.method private loadRawContactInBackground()V
    .locals 21

    .prologue
    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get4(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    const-string/jumbo v3, "ContactAccountIconManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadRawContactInBackground()--> ready to load size =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 520
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v6}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get4(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    .line 519
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v17, "selection":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v20, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "contact_id IN("

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const/4 v15, 0x0

    .line 525
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get4(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "contactId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 526
    .local v11, "contactId":Ljava/lang/Long;
    if-eqz v15, :cond_1

    .line 527
    const/16 v2, 0x2c

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    :cond_1
    const/16 v2, 0x3f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 533
    .end local v11    # "contactId":Ljava/lang/Long;
    :cond_2
    const/16 v2, 0x29

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    .line 536
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 537
    const-string/jumbo v2, "contact_id"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 538
    const-string/jumbo v2, "account_name"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 539
    const-string/jumbo v2, "account_type"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 541
    .local v4, "projection":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 543
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 544
    invoke-static {}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string/jumbo v7, "contact_id"

    .line 543
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 545
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_5

    .line 546
    :cond_3
    const-string/jumbo v2, "ContactAccountIconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "This contacts id has changed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    if-eqz v13, :cond_4

    .line 572
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_4
    return-void

    .line 550
    :cond_5
    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 551
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 552
    .restart local v11    # "contactId":Ljava/lang/Long;
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 553
    .local v18, "rawContactId":J
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 554
    .local v9, "accountName":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 555
    .local v10, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    const-string/jumbo v3, "ContactAccountIconManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contactId=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rawContactId=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    const-string/jumbo v6, " accountName=="

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    const-string/jumbo v6, " accountType=="

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v8, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get1(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get1(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;

    .line 560
    .local v16, "info":Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->addSimpleRawContact(Ljava/lang/Long;Landroid/accounts/Account;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 567
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v10    # "accountType":Ljava/lang/String;
    .end local v11    # "contactId":Ljava/lang/Long;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v16    # "info":Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;
    .end local v18    # "rawContactId":J
    :catch_0
    move-exception v14

    .line 568
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    if-eqz v13, :cond_6

    .line 572
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_6
    return-void

    .line 562
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "account":Landroid/accounts/Account;
    .restart local v9    # "accountName":Ljava/lang/String;
    .restart local v10    # "accountType":Ljava/lang/String;
    .restart local v11    # "contactId":Ljava/lang/Long;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "rawContactId":J
    :cond_7
    :try_start_3
    new-instance v16, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;-><init>(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)V

    .line 563
    .restart local v16    # "info":Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->addSimpleRawContact(Ljava/lang/Long;Landroid/accounts/Account;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get1(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 570
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v10    # "accountType":Ljava/lang/String;
    .end local v11    # "contactId":Ljava/lang/Long;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v16    # "info":Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;
    .end local v18    # "rawContactId":J
    :catchall_0
    move-exception v2

    .line 571
    if-eqz v13, :cond_8

    .line 572
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_8
    throw v2

    .line 571
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :cond_9
    if-eqz v13, :cond_a

    .line 572
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 576
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get3(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 484
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 502
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 512
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 504
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->loadRawContactInBackground()V

    goto :goto_0

    .line 508
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->checkValidSimCount()V

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestGetValidSimCount()V
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->ensureHandler()V

    .line 497
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    return-void
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->ensureHandler()V

    .line 492
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    return-void
.end method
