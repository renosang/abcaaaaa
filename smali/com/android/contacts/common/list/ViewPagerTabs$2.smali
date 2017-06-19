.class Lcom/android/contacts/common/list/ViewPagerTabs$2;
.super Ljava/lang/Object;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ViewPagerTabs;
    .param p2, "val$position"    # I

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs$2;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabs$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs$2;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v0, v0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs$2;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs$2;->val$position:I

    invoke-static {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->-wrap0(Lcom/android/contacts/common/list/ViewPagerTabs;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 234
    return-void
.end method
