.class Lcom/android/dialer/list/BlockedListSearchFragment$3;
.super Ljava/lang/Object;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/BlockedListSearchFragment;->blockNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/BlockedListSearchFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/BlockedListSearchFragment;
    .param p2, "val$number"    # Ljava/lang/String;
    .param p3, "val$countryIso"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    iput-object p2, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$countryIso:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$countryIso:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$countryIso:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    const v0, 0x7f0e00ab

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 182
    iget-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 183
    iget-object v6, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    move-object v0, p1

    .line 176
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 174
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    const v3, 0x7f0d02f2

    .line 186
    invoke-static {v1, v3, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 188
    const/4 v2, 0x0

    .line 185
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
