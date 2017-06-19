.class Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$1;
.super Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->hasBlockedNumbers(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p2, "val$listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$1;->this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$1;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$1;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;->onHasBlockedNumbers(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz p3, :cond_1

    .line 137
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    return-void

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    if-eqz p3, :cond_2

    .line 137
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_2
    throw v0
.end method
