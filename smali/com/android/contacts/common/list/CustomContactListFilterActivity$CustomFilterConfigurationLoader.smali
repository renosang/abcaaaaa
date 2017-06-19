.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterConfigurationLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountSet:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 123
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .param p1, "cursor"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 184
    :cond_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
    .locals 21

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 130
    .local v13, "context":Landroid/content/Context;
    invoke-static {v13}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v11

    .line 131
    .local v11, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v12, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-direct {v12}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;-><init>()V

    .line 134
    .local v12, "accounts":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
    const-string/jumbo v19, "deleted!=1"

    .line 135
    .local v19, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 136
    .local v7, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v11, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v10

    .line 137
    .local v10, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v10}, Lcom/android/contacts/common/model/account/AccountType;->isExtension()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7, v13}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    :cond_1
    new-instance v9, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v2, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v9, "accountDisplay":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "account_name"

    iget-object v4, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 147
    const-string/jumbo v3, "account_type"

    iget-object v4, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    .line 148
    .local v16, "groupsUri":Landroid/net/Uri$Builder;
    iget-object v2, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 149
    const-string/jumbo v2, "data_set"

    iget-object v3, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 151
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 152
    const-string/jumbo v4, "deleted!=1"

    .line 151
    const/4 v3, 0x0

    .line 152
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 151
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 153
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_0

    .line 157
    invoke-static {v14}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v18

    .line 159
    .local v18, "iterator":Landroid/content/EntityIterator;
    const/16 v17, 0x0

    .line 162
    .local v17, "hasGroups":Z
    :goto_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v20

    .line 164
    .local v20, "values":Landroid/content/ContentValues;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v15

    .line 165
    .local v15, "group":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    invoke-static {v9, v15}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->-wrap0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V

    .line 166
    const/16 v17, 0x1

    goto :goto_1

    .line 170
    .end local v15    # "group":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_3
    iget-object v2, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 171
    iget-object v4, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 170
    move/from16 v0, v17

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v2

    .line 169
    iput-object v2, v9, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 172
    iget-object v2, v9, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-static {v9, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->-wrap0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 177
    invoke-virtual {v12, v9}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    :catchall_0
    move-exception v2

    .line 174
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 173
    throw v2

    .line 180
    .end local v7    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v9    # "accountDisplay":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    .end local v10    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "groupsUri":Landroid/net/Uri$Builder;
    .end local v17    # "hasGroups":Z
    .end local v18    # "iterator":Landroid/content/EntityIterator;
    :cond_4
    return-object v12
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->loadInBackground()Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->onStopLoading()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .line 212
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_2

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->forceLoad()V

    .line 197
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->cancelLoad()Z

    .line 207
    return-void
.end method
