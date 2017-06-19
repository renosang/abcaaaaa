.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;->handleRemoveSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity;
    .param p2, "val$account"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "val$child"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->val$child:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 842
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, v1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 843
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->val$child:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 844
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-static {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->-get0(Lcom/android/contacts/common/list/CustomContactListFilterActivity;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 840
    return-void
.end method
