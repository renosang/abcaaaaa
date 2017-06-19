.class public Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;
.super Lcom/android/dialer/filterednumber/NumbersAdapter;
.source "ViewNumbersToImportAdapter.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4, "contactPhotoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/filterednumber/NumbersAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 34
    return-void
.end method

.method public static newViewNumbersToImportAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 40
    new-instance v0, Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;

    .line 43
    new-instance v1, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    .line 40
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/filterednumber/NumbersAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 52
    const/4 v1, 0x2

    .line 51
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "number":Ljava/lang/String;
    const v1, 0x7f0e00aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/filterednumber/ViewNumbersToImportAdapter;->updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
