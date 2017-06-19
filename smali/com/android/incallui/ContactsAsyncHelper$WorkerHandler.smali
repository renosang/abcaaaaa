.class Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactsAsyncHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    return-void
.end method

.method private getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x0

    .line 185
    instance-of v8, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_0

    .line 186
    return-object v10

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 189
    const v9, 0x7f0b026d

    .line 188
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 190
    .local v0, "iconSize":I
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "photo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 191
    .local v4, "orgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 192
    .local v6, "orgWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 193
    .local v5, "orgHeight":I
    if-le v6, v5, :cond_2

    move v1, v6

    .line 195
    .local v1, "longerEdge":I
    :goto_0
    if-le v1, v0, :cond_4

    .line 196
    int-to-float v8, v1

    int-to-float v9, v0

    div-float v7, v8, v9

    .line 197
    .local v7, "ratio":F
    int-to-float v8, v6

    div-float/2addr v8, v7

    float-to-int v3, v8

    .line 198
    .local v3, "newWidth":I
    int-to-float v8, v5

    div-float/2addr v8, v7

    float-to-int v2, v8

    .line 201
    .local v2, "newHeight":I
    if-lez v3, :cond_1

    if-gtz v2, :cond_3

    .line 202
    :cond_1
    const-string/jumbo v8, "Photo icon\'s width or height become 0."

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    return-object v10

    .end local v1    # "longerEdge":I
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v7    # "ratio":F
    :cond_2
    move v1, v5

    .line 193
    goto :goto_0

    .line 208
    .restart local v1    # "longerEdge":I
    .restart local v2    # "newHeight":I
    .restart local v3    # "newWidth":I
    .restart local v7    # "ratio":F
    :cond_3
    const/4 v8, 0x1

    invoke-static {v4, v3, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 210
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v7    # "ratio":F
    :cond_4
    return-object v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    .line 124
    .local v0, "args":Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;
    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    invoke-static {v6}, Lcom/android/incallui/ContactsAsyncHelper;->-get0(Lcom/android/incallui/ContactsAsyncHelper;)Landroid/os/Handler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 174
    .local v5, "reply":Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 175
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void

    .line 126
    .end local v5    # "reply":Landroid/os/Message;
    :pswitch_0
    const/4 v3, 0x0

    .line 129
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 130
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 129
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 135
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 140
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x2

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    iget-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8, v3, v6, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    .line 150
    iget-object v6, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    const-string/jumbo v8, " token: "

    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    iget v8, p1, Landroid/os/Message;->what:I

    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    const-string/jumbo v8, " image URI: "

    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_2
    if-eqz v3, :cond_0

    .line 162
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Unable to close input stream."

    invoke-static {p0, v6, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "Error opening photo input stream"

    invoke-static {p0, v6, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .line 160
    if-eqz v3, :cond_1

    .line 162
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    :cond_1
    :goto_3
    throw v6

    .line 153
    :cond_2
    const/4 v6, 0x0

    :try_start_5
    iput-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 154
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    .line 155
    iget-object v6, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Problem with image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    const-string/jumbo v8, " token: "

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    iget v8, p1, Landroid/os/Message;->what:I

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    const-string/jumbo v8, " image URI: "

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 157
    const-string/jumbo v8, ", using default image."

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 163
    :catch_2
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Unable to close input stream."

    invoke-static {p0, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
