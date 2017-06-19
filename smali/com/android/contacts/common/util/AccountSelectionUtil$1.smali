.class final Lcom/android/contacts/common/util/AccountSelectionUtil$1;
.super Landroid/widget/ArrayAdapter;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;
    .param p2, "$anonymous1"    # I
    .param p4, "val$dialogInflater"    # Landroid/view/LayoutInflater;
    .param p5, "val$accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;
    .param p6, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    .local p3, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p4, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iput-object p6, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 150
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    .line 155
    const v8, 0x7f04001e

    .line 156
    const/4 v9, 0x0

    .line 154
    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 159
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 160
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 161
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020006

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 163
    .local v4, "icon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 164
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 165
    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 164
    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 166
    .local v2, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {p0}, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 168
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const-string/jumbo v7, "PHONE"

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    iget-object v7, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->val$activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/contacts/common/model/account/PhoneAccountType;->getPhoneAccountDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "accountName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/common/util/AccountSelectionUtil$1;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-object p2

    .line 174
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_1
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .restart local v1    # "accountName":Ljava/lang/String;
    goto :goto_0
.end method
