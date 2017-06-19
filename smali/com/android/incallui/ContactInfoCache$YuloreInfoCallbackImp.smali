.class public Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YuloreInfoCallbackImp"
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
    .line 759
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;->mIsIncoming:Z

    .line 759
    return-void
.end method


# virtual methods
.method public onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 765
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " onYuloreInfoComplete "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iget-object v0, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iget-object v0, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->logo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-boolean v1, p0, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;->mIsIncoming:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/incallui/ContactInfoCache;->-wrap1(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    .line 764
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-boolean v1, p0, Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;->mIsIncoming:Z

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/incallui/ContactInfoCache;->-wrap1(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    goto :goto_0
.end method
