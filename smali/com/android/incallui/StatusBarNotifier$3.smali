.class Lcom/android/incallui/StatusBarNotifier$3;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$3;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 379
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 380
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v1

    iget v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    iput v2, v1, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    .line 382
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$3;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v1, v0, p2}, Lcom/android/incallui/StatusBarNotifier;->-wrap0(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 378
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 388
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 389
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$3;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v1, v0, p2}, Lcom/android/incallui/StatusBarNotifier;->-wrap0(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 387
    :cond_0
    return-void
.end method
