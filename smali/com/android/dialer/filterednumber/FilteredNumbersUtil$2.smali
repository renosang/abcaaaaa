.class final Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;
.super Landroid/os/AsyncTask;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

.field final synthetic val$mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$mFilteredNumberAsyncQueryHandler"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p3, "val$listener"    # Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iput-object p3, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 174
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 180
    sget-object v2, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    .line 181
    const-string/jumbo v3, "send_to_voicemail=1"

    move-object v5, v4

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 185
    .local v9, "phoneCursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 186
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    const/4 v0, 0x1

    .line 191
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "normalizedNumber":Ljava/lang/String;
    const/4 v0, 0x2

    .line 193
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "number":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 198
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    .end local v7    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 202
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 201
    throw v0

    .line 202
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 206
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v6, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v0, "send_to_voicemail"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 211
    const-string/jumbo v2, "send_to_voicemail=1"

    .line 208
    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    invoke-interface {v1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;->onImportComplete()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0d02ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "toastStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
