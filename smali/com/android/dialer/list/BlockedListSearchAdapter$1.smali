.class Lcom/android/dialer/list/BlockedListSearchAdapter$1;
.super Ljava/lang/Object;
.source "BlockedListSearchAdapter.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/BlockedListSearchAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/BlockedListSearchAdapter;

.field final synthetic val$view:Lcom/android/contacts/common/list/ContactListItemView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/BlockedListSearchAdapter;Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/BlockedListSearchAdapter;
    .param p2, "val$view"    # Lcom/android/contacts/common/list/ContactListItemView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/dialer/list/BlockedListSearchAdapter$1;->this$0:Lcom/android/dialer/list/BlockedListSearchAdapter;

    iput-object p2, p0, Lcom/android/dialer/list/BlockedListSearchAdapter$1;->val$view:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/dialer/list/BlockedListSearchAdapter$1;->this$0:Lcom/android/dialer/list/BlockedListSearchAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/BlockedListSearchAdapter$1;->val$view:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setViewBlocked(Lcom/android/contacts/common/list/ContactListItemView;Ljava/lang/Integer;)V

    .line 81
    :cond_0
    return-void
.end method
