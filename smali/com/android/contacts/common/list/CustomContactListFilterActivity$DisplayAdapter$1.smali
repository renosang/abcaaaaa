.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;->this$1:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 726
    .local v2, "groupPosition":I
    iget-object v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;->this$1:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChildrenCount(I)I

    move-result v1

    .line 727
    .local v1, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 728
    iget-object v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;->this$1:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v4, v2, v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 729
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    .line 727
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;->this$1:Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 724
    return-void
.end method
