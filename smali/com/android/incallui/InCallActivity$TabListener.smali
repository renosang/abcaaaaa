.class Lcom/android/incallui/InCallActivity$TabListener;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListener"
.end annotation


# instance fields
.field mPhoneId:I

.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;
    .param p2, "phoneId"    # I

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$TabListener;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    iput p2, p0, Lcom/android/incallui/InCallActivity$TabListener;->mPhoneId:I

    .line 1350
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1373
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1355
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$TabListener;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1356
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    .line 1357
    .local v2, "tabCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTabSelected mPhoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/InCallActivity$TabListener;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    iget v3, p0, Lcom/android/incallui/InCallActivity$TabListener;->mPhoneId:I

    invoke-static {v3}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v1

    .line 1363
    .local v1, "subId":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Switch to other active sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->switchToActiveSub(I)V

    .line 1354
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1370
    return-void
.end method
