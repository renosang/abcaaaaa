.class public Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private final mResId:I

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/app/Activity;Ljava/util/List;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "resId"    # I
    .param p4, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    const-string/jumbo v0, "AccountSelectionUtil"

    const-string/jumbo v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 77
    iput p3, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    .line 78
    iput p4, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mSubscriptionId:I

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    iget-object v1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget v3, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mSubscriptionId:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/app/Activity;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    .line 88
    return-void
.end method

.method setAccountList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 98
    return-void
.end method
