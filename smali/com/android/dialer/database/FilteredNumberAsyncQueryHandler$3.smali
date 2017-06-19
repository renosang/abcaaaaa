.class Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;
.super Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p2, "val$listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;->this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;)V

    return-void
.end method


# virtual methods
.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    invoke-interface {v0, p3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;->onBlockComplete(Landroid/net/Uri;)V

    .line 230
    :cond_0
    return-void
.end method
