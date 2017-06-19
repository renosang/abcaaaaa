.class Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;
.super Ljava/lang/Object;
.source "BlockedNumbersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/Integer;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;
    .param p2, "val$id"    # Ljava/lang/Integer;
    .param p3, "val$number"    # Ljava/lang/String;
    .param p4, "val$countryIso"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$id:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$countryIso:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$id:Ljava/lang/Integer;

    .line 67
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$number:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$countryIso:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->val$countryIso:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const v4, 0x7f0e00ab

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    invoke-virtual {v5}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 72
    new-instance v6, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1$1;

    invoke-direct {v6, p0}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1$1;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;)V

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 64
    return-void
.end method
