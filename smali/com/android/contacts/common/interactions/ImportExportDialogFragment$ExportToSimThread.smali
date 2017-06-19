.class public Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;
.super Ljava/lang/Thread;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExportToSimThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;
    }
.end annotation


# instance fields
.field final BATCH_INSERT_NUMBER:I

.field private account:Landroid/accounts/Account;

.field private canceled:Z

.field private contactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freeSimCount:I

.field private mExportProgressDlg:Landroid/app/ProgressDialog;

.field mPeople:Landroid/app/Activity;

.field private mToastHandler:Landroid/os/Handler;

.field private mValues:Landroid/content/ContentValues;

.field private operationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:I

.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method static synthetic -set0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->canceled:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;ILjava/util/ArrayList;Landroid/app/Activity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    .param p2, "subscription"    # I
    .param p4, "mActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 514
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .line 516
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 506
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mValues:Landroid/content/ContentValues;

    .line 508
    iput v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    .line 512
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->BATCH_INSERT_NUMBER:I

    .line 850
    new-instance v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    .line 517
    iput p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    .line 518
    iput-object p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->contactList:Ljava/util/ArrayList;

    .line 519
    iput-boolean v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->canceled:Z

    .line 520
    iput-object p4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 521
    invoke-static {p4, p2}, Lcom/android/contacts/common/MoreContactUtils;->getAcount(Landroid/content/Context;I)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->account:Landroid/accounts/Account;

    .line 522
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->showExportProgressDialog(Landroid/app/Activity;)V

    .line 515
    return-void
.end method

.method private batchInsert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "anrs"    # Ljava/lang/String;
    .param p4, "emailAddresses"    # Ljava/lang/String;

    .prologue
    .line 768
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 769
    const-string/jumbo v8, ","

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 773
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 774
    const-string/jumbo v8, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 778
    :goto_1
    const-string/jumbo v8, "ImportExportDialogFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "insertToPhone: name= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", phoneNumber= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 779
    const-string/jumbo v10, ", emails= "

    .line 778
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 779
    const-string/jumbo v10, ", anrs= "

    .line 778
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 779
    const-string/jumbo v10, ", account= "

    .line 778
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 779
    iget-object v10, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->account:Landroid/accounts/Account;

    .line 778
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 780
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 782
    .local v3, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v8, "aggregation_mode"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 784
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 785
    .local v7, "ref":I
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->account:Landroid/accounts/Account;

    if-eqz v8, :cond_0

    .line 786
    const-string/jumbo v8, "account_name"

    iget-object v9, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 787
    const-string/jumbo v8, "account_type"

    iget-object v9, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 789
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 792
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 793
    const-string/jumbo v8, "raw_contact_id"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 794
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v9, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 795
    const-string/jumbo v8, "data1"

    invoke-virtual {v3, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 796
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 800
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 801
    const-string/jumbo v8, "raw_contact_id"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 802
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 803
    const-string/jumbo v8, "data2"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 804
    const-string/jumbo v8, "data1"

    invoke-virtual {v3, v8, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 805
    const-string/jumbo v8, "is_primary"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 806
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_2
    if-eqz v2, :cond_6

    .line 810
    const/4 v8, 0x0

    array-length v9, v2

    :goto_2
    if-ge v8, v9, :cond_6

    aget-object v1, v2, v8

    .line 811
    .local v1, "anr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 812
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 813
    const-string/jumbo v10, "raw_contact_id"

    invoke-virtual {v3, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 814
    const-string/jumbo v10, "mimetype"

    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 815
    const-string/jumbo v10, "data2"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 816
    const-string/jumbo v10, "data1"

    invoke-virtual {v3, v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 817
    iget-object v10, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 771
    .end local v1    # "anr":Ljava/lang/String;
    .end local v3    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v7    # "ref":I
    :cond_4
    const/4 v6, 0x0

    .local v6, "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 776
    .end local v6    # "emailAddressArray":[Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .local v2, "anrArray":[Ljava/lang/String;
    goto/16 :goto_1

    .line 822
    .end local v2    # "anrArray":[Ljava/lang/String;
    .restart local v3    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v7    # "ref":I
    :cond_6
    if-eqz v6, :cond_8

    .line 823
    const/4 v8, 0x0

    array-length v9, v6

    :goto_3
    if-ge v8, v9, :cond_8

    aget-object v5, v6, v8

    .line 824
    .local v5, "emailAddress":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 825
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 826
    const-string/jumbo v10, "raw_contact_id"

    invoke-virtual {v3, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 827
    const-string/jumbo v10, "mimetype"

    const-string/jumbo v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 828
    const-string/jumbo v10, "data2"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 829
    const-string/jumbo v10, "data1"

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 830
    iget-object v10, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 835
    .end local v5    # "emailAddress":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rsub-int v8, v8, 0x1f4

    const/16 v9, 0xa

    if-ge v8, v9, :cond_9

    .line 837
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 838
    const-string/jumbo v9, "com.android.contacts"

    .line 839
    iget-object v10, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 765
    :cond_9
    :goto_4
    return-void

    .line 840
    :catch_0
    move-exception v4

    .line 841
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "ImportExportDialogFragment"

    .line 842
    const-string/jumbo v9, "%s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 843
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 842
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 841
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    iget-object v8, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 844
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 845
    iget-object v9, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 844
    throw v8
.end method


# virtual methods
.method public dismisExportProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 962
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 964
    iput-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    .line 961
    :cond_0
    return-void
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public run()V
    .locals 52

    .prologue
    .line 531
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-set0(Z)Z

    .line 532
    const/16 v39, 0x0

    .line 533
    .local v39, "isAirplaneMode":Z
    const/16 v40, 0x0

    .line 534
    .local v40, "isSimCardFull":Z
    const/16 v41, 0x1

    .line 537
    .local v41, "isSimCardLoaded":Z
    const/16 v37, 0x0

    .line 539
    .local v37, "insertCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    new-instance v5, Lcom/android/contacts/common/SimContactsOperation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-direct {v5, v8}, Lcom/android/contacts/common/SimContactsOperation;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-set1(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Lcom/android/contacts/common/SimContactsOperation;)Lcom/android/contacts/common/SimContactsOperation;

    .line 540
    const/16 v21, 0x0

    .line 542
    .local v21, "cr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getSimFreeCount(Landroid/content/Context;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getAdnCount(Landroid/content/Context;I)I

    move-result v12

    .line 544
    .local v12, "AdnCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->canSaveAnr(Landroid/content/Context;I)Z

    move-result v18

    .line 545
    .local v18, "canSaveAnr":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->canSaveEmail(Landroid/content/Context;I)Z

    move-result v19

    .line 547
    .local v19, "canSaveEmail":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    .line 546
    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getOneSimEmailCount(Landroid/content/Context;I)I

    move-result v25

    .line 549
    .local v25, "emailCountInOneSimContact":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    .line 548
    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getOneSimAnrCount(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v49, v2, 0x1

    .line 550
    .local v49, "phoneCountInOneSimContact":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getSpareAnrCount(Landroid/content/Context;I)I

    move-result v27

    .line 552
    .local v27, "emptyAnr":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    .line 551
    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getSpareEmailCount(Landroid/content/Context;I)I

    move-result v29

    .line 553
    .local v29, "emptyEmail":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    add-int v31, v2, v27

    .line 555
    .local v31, "emptyNumber":I
    const-string/jumbo v2, "ImportExportDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "freeSimCount = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v26, 0x0

    .line 557
    .local v26, "emails":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->contactList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .line 559
    .local v42, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->canceled:Z

    if-eqz v2, :cond_5

    .line 729
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 731
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 732
    const-string/jumbo v5, "com.android.contacts"

    .line 733
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    .line 731
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 743
    .end local v42    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 745
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    .line 748
    :cond_3
    if-nez v40, :cond_4

    .line 750
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->canceled:Z

    if-eqz v2, :cond_25

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    .line 752
    const/4 v9, 0x0

    .line 751
    move/from16 v0, v37

    invoke-virtual {v5, v8, v0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    :cond_4
    :goto_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-set0(Z)Z

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap5(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V

    .line 760
    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.sim.INTENT_EXPORT_COMPLETE"

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v38, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    return-void

    .line 559
    .end local v38    # "intent":Landroid/content/Intent;
    .restart local v42    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :cond_5
    if-eqz v41, :cond_1

    .line 560
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .line 562
    .local v20, "contactInfo":[Ljava/lang/String;
    const-string/jumbo v46, ""

    .line 563
    .local v46, "name":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v16, "arrayNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v15, "arrayEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 568
    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 567
    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 569
    const-string/jumbo v5, "data"

    .line 566
    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 570
    .local v3, "dataUri":Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    .line 571
    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "mimetype"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "data1"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 573
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    .line 574
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 573
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 576
    .local v17, "c":Landroid/database/Cursor;
    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v6, v46

    .line 578
    .end local v46    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 579
    .local v45, "mimeType":Ljava/lang/String;
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 580
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 582
    :cond_7
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 583
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 584
    .local v48, "number":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v32, v31, -0x1

    .end local v31    # "emptyNumber":I
    .local v32, "emptyNumber":I
    if-lez v31, :cond_c

    .line 585
    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v31, v32

    .line 588
    .end local v32    # "emptyNumber":I
    .end local v48    # "number":Ljava/lang/String;
    .restart local v31    # "emptyNumber":I
    :cond_8
    :goto_4
    if-eqz v19, :cond_9

    .line 589
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 590
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 591
    .local v23, "email":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v30, v29, -0x1

    .end local v29    # "emptyEmail":I
    .local v30, "emptyEmail":I
    if-lez v29, :cond_d

    .line 592
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v29, v30

    .line 596
    .end local v23    # "email":Ljava/lang/String;
    .end local v30    # "emptyEmail":I
    .restart local v29    # "emptyEmail":I
    :cond_9
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 598
    .end local v45    # "mimeType":Ljava/lang/String;
    :goto_6
    if-eqz v17, :cond_a

    .line 599
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    if-lez v2, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 603
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    .line 605
    const/4 v8, 0x5

    .line 604
    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .restart local v46    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v6, v46

    .line 576
    .end local v46    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_6

    .end local v31    # "emptyNumber":I
    .restart local v32    # "emptyNumber":I
    .restart local v45    # "mimeType":Ljava/lang/String;
    .restart local v48    # "number":Ljava/lang/String;
    :cond_c
    move/from16 v31, v32

    .line 584
    .end local v32    # "emptyNumber":I
    .restart local v31    # "emptyNumber":I
    goto :goto_4

    .end local v29    # "emptyEmail":I
    .end local v48    # "number":Ljava/lang/String;
    .restart local v23    # "email":Ljava/lang/String;
    .restart local v30    # "emptyEmail":I
    :cond_d
    move/from16 v29, v30

    .line 591
    .end local v30    # "emptyEmail":I
    .restart local v29    # "emptyEmail":I
    goto :goto_5

    .line 609
    .end local v23    # "email":Ljava/lang/String;
    .end local v45    # "mimeType":Ljava/lang/String;
    :cond_e
    if-eqz v6, :cond_f

    const-string/jumbo v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_f
    const/16 v47, 0x0

    .line 610
    .local v47, "nameCount":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, v2, v49

    if-eqz v2, :cond_14

    .line 611
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v2, v2, v49

    add-int/lit8 v35, v2, 0x1

    .line 613
    .local v35, "groupNumCount":I
    :goto_8
    if-nez v25, :cond_15

    const/16 v34, 0x0

    .line 618
    .local v34, "groupEmailCount":I
    :goto_9
    if-eqz v18, :cond_10

    if-ltz v27, :cond_10

    move/from16 v0, v27

    move/from16 v1, v35

    if-gt v0, v1, :cond_10

    .line 619
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v35, v2, v27

    .line 622
    :cond_10
    move/from16 v0, v47

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 621
    move/from16 v0, v34

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 624
    .local v33, "groupCount":I
    const/16 v50, 0x0

    .line 626
    .local v50, "result":Landroid/net/Uri;
    const-string/jumbo v2, "ImportExportDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GroupCount = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/16 v36, 0x0

    .end local v50    # "result":Landroid/net/Uri;
    .local v36, "i":I
    :goto_a
    move/from16 v0, v36

    move/from16 v1, v33

    if-ge v0, v1, :cond_23

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    if-lez v2, :cond_22

    .line 630
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 631
    :goto_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v13, "anrNum":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v24, "email":Ljava/lang/StringBuilder;
    if-eqz v18, :cond_1a

    .line 634
    const/16 v43, 0x1

    .local v43, "j":I
    move/from16 v28, v27

    .end local v27    # "emptyAnr":I
    .local v28, "emptyAnr":I
    :goto_c
    move/from16 v0, v43

    move/from16 v1, v49

    if-ge v0, v1, :cond_19

    .line 635
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    add-int/lit8 v27, v28, -0x1

    .end local v28    # "emptyAnr":I
    .restart local v27    # "emptyAnr":I
    if-lez v28, :cond_12

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 637
    .local v51, "s":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x28

    if-le v2, v5, :cond_11

    .line 639
    const/4 v2, 0x0

    .line 640
    const/16 v5, 0x28

    .line 639
    move-object/from16 v0, v51

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v51

    .line 642
    :cond_11
    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string/jumbo v2, ":"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .end local v51    # "s":Ljava/lang/String;
    :cond_12
    :goto_d
    add-int/lit8 v43, v43, 0x1

    move/from16 v28, v27

    .end local v27    # "emptyAnr":I
    .restart local v28    # "emptyAnr":I
    goto :goto_c

    .line 609
    .end local v13    # "anrNum":Ljava/lang/StringBuilder;
    .end local v24    # "email":Ljava/lang/StringBuilder;
    .end local v28    # "emptyAnr":I
    .end local v33    # "groupCount":I
    .end local v34    # "groupEmailCount":I
    .end local v35    # "groupNumCount":I
    .end local v36    # "i":I
    .end local v43    # "j":I
    .end local v47    # "nameCount":I
    .restart local v27    # "emptyAnr":I
    :cond_13
    const/16 v47, 0x1

    .restart local v47    # "nameCount":I
    goto/16 :goto_7

    .line 612
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v35, v2, v49

    .restart local v35    # "groupNumCount":I
    goto/16 :goto_8

    .line 614
    :cond_15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, v2, v25

    if-eqz v2, :cond_16

    .line 615
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v2, v2, v25

    .line 614
    add-int/lit8 v34, v2, 0x1

    .restart local v34    # "groupEmailCount":I
    goto/16 :goto_9

    .line 616
    .end local v34    # "groupEmailCount":I
    :cond_16
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v34, v2, v25

    .restart local v34    # "groupEmailCount":I
    goto/16 :goto_9

    .line 630
    .restart local v33    # "groupCount":I
    .restart local v36    # "i":I
    :cond_17
    const/4 v7, 0x0

    .local v7, "num":Ljava/lang/String;
    goto :goto_b

    .end local v7    # "num":Ljava/lang/String;
    .end local v27    # "emptyAnr":I
    .restart local v13    # "anrNum":Ljava/lang/StringBuilder;
    .restart local v24    # "email":Ljava/lang/StringBuilder;
    .restart local v28    # "emptyAnr":I
    .restart local v43    # "j":I
    :cond_18
    move/from16 v27, v28

    .line 635
    .end local v28    # "emptyAnr":I
    .restart local v27    # "emptyAnr":I
    goto :goto_d

    .end local v27    # "emptyAnr":I
    .restart local v28    # "emptyAnr":I
    :cond_19
    move/from16 v27, v28

    .line 647
    .end local v28    # "emptyAnr":I
    .end local v43    # "j":I
    .restart local v27    # "emptyAnr":I
    :cond_1a
    if-eqz v19, :cond_1d

    .line 648
    const/16 v43, 0x0

    .restart local v43    # "j":I
    :goto_e
    move/from16 v0, v43

    move/from16 v1, v25

    if-ge v0, v1, :cond_1d

    .line 649
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 650
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 651
    .restart local v51    # "s":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x28

    if-le v2, v5, :cond_1b

    .line 653
    const/4 v2, 0x0

    .line 654
    const/16 v5, 0x28

    .line 653
    move-object/from16 v0, v51

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v51

    .line 656
    :cond_1b
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string/jumbo v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .end local v51    # "s":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v43, v43, 0x1

    goto :goto_e

    .line 662
    .end local v43    # "j":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 663
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    const/4 v11, 0x0

    .line 662
    invoke-static/range {v5 .. v11}, Lcom/android/contacts/common/MoreContactUtils;->insertToCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v50

    .line 665
    .local v50, "result":Landroid/net/Uri;
    if-nez v50, :cond_21

    .line 667
    const/4 v14, 0x0

    .line 668
    .local v14, "anrNumber":I
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 669
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    const-string/jumbo v5, ":"

    .line 669
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v14, v2, 0x0

    .line 674
    :cond_1e
    add-int v27, v27, v14

    .line 675
    add-int v31, v31, v14

    .line 676
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 677
    add-int/lit8 v31, v31, 0x1

    .line 680
    :cond_1f
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 683
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    const-string/jumbo v5, ","

    .line 683
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int v29, v29, v2

    .line 687
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    .line 689
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 688
    const/4 v9, 0x7

    .line 687
    invoke-virtual {v5, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    .end local v14    # "anrNumber":I
    :goto_f
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_a

    .line 694
    :cond_21
    const-string/jumbo v2, "ImportExportDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exported contact ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 695
    const/4 v8, 0x0

    aget-object v8, v20, v8

    .line 694
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 695
    const-string/jumbo v8, ", "

    .line 694
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 695
    const/4 v8, 0x1

    aget-object v8, v20, v8

    .line 694
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 696
    const-string/jumbo v8, "] to sub "

    .line 694
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 696
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    .line 694
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    add-int/lit8 v37, v37, 0x1

    .line 699
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->freeSimCount:I

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->subscription:I

    .line 702
    invoke-static {v2, v5}, Lcom/android/contacts/common/MoreContactUtils;->getAdnAlphaTagMaxLength(Landroid/content/Context;I)I

    move-result v44

    .line 704
    .local v44, "maxLen":I
    move/from16 v0, v44

    invoke-static {v6, v0}, Lcom/android/contacts/common/MoreContactUtils;->getLimitSimName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 707
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 707
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v2, v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->batchInsert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 711
    .end local v13    # "anrNum":Ljava/lang/StringBuilder;
    .end local v24    # "email":Ljava/lang/StringBuilder;
    .end local v44    # "maxLen":I
    .end local v50    # "result":Landroid/net/Uri;
    :cond_22
    if-nez v12, :cond_24

    .line 712
    const/16 v41, 0x0

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    .line 714
    const/4 v5, 0x6

    .line 713
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 724
    :cond_23
    :goto_10
    if-eqz v40, :cond_0

    goto/16 :goto_1

    .line 716
    :cond_24
    const/16 v40, 0x1

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    .line 718
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 717
    move/from16 v0, v37

    invoke-virtual {v5, v8, v0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10

    .line 734
    .end local v3    # "dataUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v15    # "arrayEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "arrayNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v20    # "contactInfo":[Ljava/lang/String;
    .end local v33    # "groupCount":I
    .end local v34    # "groupEmailCount":I
    .end local v35    # "groupNumCount":I
    .end local v36    # "i":I
    .end local v47    # "nameCount":I
    :catch_0
    move-exception v22

    .line 735
    .local v22, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "ImportExportDialogFragment"

    .line 736
    const-string/jumbo v5, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 737
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 736
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 735
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 738
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 739
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 738
    throw v2

    .line 754
    .end local v42    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mToastHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .restart local v3    # "dataUri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v15    # "arrayEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "arrayNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v20    # "contactInfo":[Ljava/lang/String;
    .restart local v42    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .restart local v46    # "name":Ljava/lang/String;
    :cond_26
    move-object/from16 v6, v46

    .end local v46    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto/16 :goto_6
.end method

.method public showExportProgressDialog(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 927
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    .line 928
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 929
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$2;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 935
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    const v2, 0x7f0d00a7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 937
    const v2, 0x7f0d00a8

    .line 936
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 942
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    .line 946
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    const v2, 0x7f0d00a9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 947
    new-instance v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$3;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V

    .line 945
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 957
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mExportProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 925
    return-void
.end method
