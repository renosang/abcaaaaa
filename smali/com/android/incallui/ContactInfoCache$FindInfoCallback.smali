.class Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInfoCallback"
.end annotation


# instance fields
.field private final mIsIncoming:Z

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    .line 159
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 166
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contactExists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isVoiceMailNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-boolean v0, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    check-cast p2, Lcom/android/incallui/Call;

    .end local p2    # "cookie":Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/incallui/ContactInfoCache;->-wrap1(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    .line 164
    :goto_0
    return-void

    .line 168
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->-get3(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    move-result-object v0

    check-cast p2, Lcom/android/incallui/Call;

    .end local p2    # "cookie":Ljava/lang/Object;
    new-instance v1, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-boolean v3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    invoke-direct {v1, v2, v3}, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->findInfo(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;)V

    goto :goto_0
.end method
