.class public Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;
.super Lcom/android/dialer/filterednumber/NumbersAdapter;
.source "BlockedNumbersAdapter.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4, "contactPhotoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/filterednumber/NumbersAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 38
    return-void
.end method

.method public static newBlockedNumbersAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 44
    new-instance v0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;

    .line 47
    new-instance v1, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    .line 44
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/filterednumber/NumbersAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    const-string/jumbo v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    .local v2, "id":Ljava/lang/Integer;
    const-string/jumbo v5, "country_iso"

    .line 55
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "countryIso":Ljava/lang/String;
    const-string/jumbo v5, "number"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "number":Ljava/lang/String;
    const-string/jumbo v5, "normalized_number"

    .line 58
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "normalizedNumber":Ljava/lang/String;
    const v5, 0x7f0e00aa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "deleteButton":Landroid/view/View;
    new-instance v5, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;

    invoke-direct {v5, p0, v2, v4, v0}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter;->updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
