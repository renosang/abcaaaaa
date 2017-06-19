.class Lcom/android/incallui/VideoCallPresenter$2;
.super Landroid/os/AsyncTask;
.source "VideoCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallPresenter;->loadProfilePhotoAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;

.field final synthetic val$ui:Lcom/android/incallui/VideoCallPresenter$VideoCallUi;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "val$ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/VideoCallPresenter$2;->val$ui:Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1315
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1316
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    new-instance v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v1}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->-set2(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1319
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get2(Lcom/android/incallui/VideoCallPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1320
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 1321
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 1322
    const-string/jumbo v4, "photo_uri"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 1323
    const-string/jumbo v4, "lookup"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 1324
    const-string/jumbo v4, "display_name"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    .line 1325
    const-string/jumbo v4, "display_name_alt"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 1319
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1327
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1329
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1331
    const-string/jumbo v1, "lookup"

    .line 1330
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    .line 1333
    const-string/jumbo v0, "photo_uri"

    .line 1332
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1334
    .local v7, "photoUri":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-nez v7, :cond_2

    move-object v0, v3

    :goto_0
    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 1336
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1337
    const-string/jumbo v1, "display_name"

    .line 1336
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1338
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1339
    const-string/jumbo v1, "display_name_alt"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1338
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    .end local v7    # "photoUri":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1347
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v3

    .line 1335
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "photoUri":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1342
    .end local v7    # "photoUri":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1343
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1342
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1351
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1354
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get1(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->-get2(Lcom/android/incallui/VideoCallPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/VideoCallPresenter;->-set1(Lcom/android/incallui/VideoCallPresenter;Lcom/android/contacts/common/ContactPhotoManager;)Lcom/android/contacts/common/ContactPhotoManager;

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1359
    const/4 v5, 0x0

    .line 1363
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->val$ui:Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1364
    .local v1, "photoView":Landroid/widget/ImageView;
    if-nez v1, :cond_2

    .line 1365
    return-void

    .line 1360
    .end local v1    # "photoView":Landroid/widget/ImageView;
    :cond_1
    new-instance v5, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1361
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    .line 1360
    invoke-direct {v5, v0, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v5, "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    goto :goto_0

    .line 1367
    .end local v5    # "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .restart local v1    # "photoView":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get1(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    .line 1368
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter$2;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->-get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move v4, v3

    .line 1367
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 1351
    .end local v1    # "photoView":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method
