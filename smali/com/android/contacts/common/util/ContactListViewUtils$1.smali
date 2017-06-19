.class final Lcom/android/contacts/common/util/ContactListViewUtils$1;
.super Ljava/lang/Object;
.source "ContactListViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listSpaceWeight:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$listViewWeight:I

.field final synthetic val$rootLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/view/View;II)V
    .locals 0
    .param p1, "val$listView"    # Landroid/widget/ListView;
    .param p2, "val$rootLayout"    # Landroid/view/View;
    .param p3, "val$listSpaceWeight"    # I
    .param p4, "val$listViewWeight"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$listView:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$rootLayout:Landroid/view/View;

    iput p3, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$listSpaceWeight:I

    iput p4, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$listViewWeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$rootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$listSpaceWeight:I

    iget v3, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->val$listViewWeight:I

    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/util/ContactListViewUtils;->-wrap0(Landroid/widget/ListView;III)V

    .line 67
    return-void
.end method
