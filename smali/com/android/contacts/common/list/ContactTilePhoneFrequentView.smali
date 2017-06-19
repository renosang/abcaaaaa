.class public Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTilePhoneFrequentView.java"


# instance fields
.field private mPhoneNumberString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;-><init>(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)V

    return-object v0
.end method

.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ViewUtil;->getConstantPreLayoutWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 52
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    .line 50
    :cond_0
    return-void
.end method
