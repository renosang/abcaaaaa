.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private mResId:I

.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p4, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 234
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 235
    iput p3, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    .line 233
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 240
    check-cast v3, Landroid/view/LayoutInflater;

    .line 246
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 248
    iget v5, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 249
    .local v4, "rowView":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v2, p0, v7}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;)V

    .line 250
    .local v2, "holder":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    const v5, 0x7f0e015a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    .line 251
    const v5, 0x7f0e012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    .line 252
    const/high16 v5, 0x7f0e0000

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 253
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 260
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 261
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v5, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v5}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->-get3(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 262
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-nez v0, :cond_1

    .line 263
    return-object v4

    .line 256
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "holder":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    .end local v4    # "rowView":Landroid/view/View;
    :cond_0
    move-object v4, p2

    .line 257
    .restart local v4    # "rowView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .line 265
    .restart local v0    # "account":Landroid/telecom/PhoneAccount;
    .restart local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 266
    if-eqz v5, :cond_3

    .line 268
    :cond_2
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :goto_1
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 275
    invoke-static {v0, v6}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->createIconDrawable(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    return-object v4

    .line 270
    :cond_3
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    .line 273
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-static {v6}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 271
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
