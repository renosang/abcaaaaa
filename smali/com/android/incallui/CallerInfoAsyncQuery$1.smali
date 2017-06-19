.class final Lcom/android/incallui/CallerInfoAsyncQuery$1;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/android/incallui/CallerInfo;

.field final synthetic val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "val$listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$info:Lcom/android/incallui/CallerInfo;

    iput-object p3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 361
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    const-string/jumbo v1, "contactsProviderQueryCompleteListener done"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_2

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$info:Lcom/android/incallui/CallerInfo;

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/incallui/CallerInfoAsyncQuery;->-wrap0(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    goto :goto_0
.end method
