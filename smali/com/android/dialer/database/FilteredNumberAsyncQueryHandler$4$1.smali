.class Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;
.super Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;

.field final synthetic val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;
    .param p2, "val$listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;
    .param p3, "val$values"    # Landroid/content/ContentValues;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;->this$1:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;

    iput-object p2, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iput-object p3, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;->val$values:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;)V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iget-object v1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;->val$values:Landroid/content/ContentValues;

    invoke-interface {v0, p3, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;->onUnblockComplete(ILandroid/content/ContentValues;)V

    .line 277
    :cond_0
    return-void
.end method
