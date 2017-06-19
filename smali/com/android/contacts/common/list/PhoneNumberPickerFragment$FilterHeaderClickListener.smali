.class Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    .line 88
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-static {v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->-get0(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    .line 87
    const/4 v2, 0x1

    .line 85
    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V

    .line 84
    return-void
.end method
