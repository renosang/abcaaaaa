.class Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;
.super Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p2, "val$listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;->this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 174
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-eqz p3, :cond_1

    .line 190
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    return-void

    .line 178
    :cond_2
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    const-string/jumbo v0, "type"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 182
    const/4 v1, 0x1

    .line 181
    if-eq v0, v1, :cond_4

    .line 183
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    if-eqz p3, :cond_3

    .line 190
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_3
    return-void

    .line 186
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    .line 187
    const-string/jumbo v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    invoke-interface {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    if-eqz p3, :cond_5

    .line 190
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_5
    return-void

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    if-eqz p3, :cond_6

    .line 190
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_6
    throw v0
.end method
